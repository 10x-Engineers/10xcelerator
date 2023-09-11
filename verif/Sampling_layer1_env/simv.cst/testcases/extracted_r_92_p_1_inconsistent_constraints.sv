class c_92_1;
    integer i = -14;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_92_1;
    c_92_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01x10zx0010z1x0zz0zxz1001xzz1x10zxxxxzzxzzzzzxzxxzxzzzzxxzzxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
