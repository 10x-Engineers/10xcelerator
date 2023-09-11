class c_1641_1;
    integer i = -272;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1641_1;
    c_1641_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1100zz0xzxxz0zx11xxx011001xz0z0zxxxxzxzzzzxxzxxzzxxxzxxzzxzzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
