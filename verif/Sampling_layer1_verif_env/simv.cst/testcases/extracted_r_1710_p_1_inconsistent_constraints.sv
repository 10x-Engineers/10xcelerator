class c_1710_1;
    integer i = -283;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1710_1;
    c_1710_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1xz10x1x0z0zzz0xzz0x0z010010x00zxxzxxxzzzxxxzxzxxzxzzzxxxxzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
