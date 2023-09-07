class c_1216_1;
    integer i = -201;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1216_1;
    c_1216_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x000xzzxz10zz0100x110zx0x0zz1001xzzzzxzzxxxzzxzzzzxzxzzzzzxxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
