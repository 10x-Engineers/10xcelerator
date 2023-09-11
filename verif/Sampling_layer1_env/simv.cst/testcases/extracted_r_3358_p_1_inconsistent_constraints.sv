class c_3358_1;
    integer i = -558;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3358_1;
    c_3358_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzxzz1z00zzx0zx1z0x11xz011zz00xzzxxxxzxxxzxxxzxzzzzzxxzzxxxxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
