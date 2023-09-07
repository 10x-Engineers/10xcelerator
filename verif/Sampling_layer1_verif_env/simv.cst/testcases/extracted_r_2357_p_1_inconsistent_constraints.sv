class c_2357_1;
    integer i = -391;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2357_1;
    c_2357_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z0x1zzx0xz0zzx0100x01zz01xxzx1xzzxxxzxxzxzzxzxzxxzzxzxzxxxzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
