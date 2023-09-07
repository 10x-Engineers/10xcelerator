class c_3350_1;
    integer i = -557;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3350_1;
    c_3350_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzzxzx0zzxxz0xz0x11x1z0zx1z1zz11zxzxxxzxxxzxxxxxzzzxxxxxzxzzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
