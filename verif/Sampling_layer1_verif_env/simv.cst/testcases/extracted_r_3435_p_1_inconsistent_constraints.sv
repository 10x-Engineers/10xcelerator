class c_3435_1;
    integer i = -571;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3435_1;
    c_3435_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xx001x0x1xxzx1110011z0xzxx0z01zzzxzxxxzzzzzxzzzzzzxxxzxxzzxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
