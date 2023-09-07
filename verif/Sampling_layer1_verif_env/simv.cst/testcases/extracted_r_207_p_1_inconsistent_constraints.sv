class c_207_1;
    integer i = -33;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_207_1;
    c_207_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x0010zx01xx01zzz10x1z1x101000z0xzxxxxxxxzzzzzxzxzxxxzzzxzxzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
