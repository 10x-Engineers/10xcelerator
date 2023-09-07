class c_2157_1;
    integer i = -358;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2157_1;
    c_2157_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x11x0x0x0xzz1z00zxz10z10x1000x1xxzxzzzzzxxzxzxxzxxzzxzzxxzzzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
