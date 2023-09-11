class c_316_1;
    integer i = -51;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_316_1;
    c_316_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x100xzx000xz00zxx1z000zzxxxz0000xzxzxxxzxxzxxzzzxzzzxxxxxxzzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
