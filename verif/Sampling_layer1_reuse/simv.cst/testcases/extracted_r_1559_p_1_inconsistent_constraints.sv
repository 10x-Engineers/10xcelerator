class c_1559_1;
    integer i = -258;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1559_1;
    c_1559_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1111001z0xzx1x10xx110x100x11z0zzxzzxzxxxzxxzxzxzxxzzzzzxzzxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
