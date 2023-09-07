class c_3234_1;
    integer i = -537;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3234_1;
    c_3234_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xz0x0011z00zz1z1x0z1zx1zxz0z10zxxzxxzzxzzzzxxxzxxzzzxzzzxxzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
