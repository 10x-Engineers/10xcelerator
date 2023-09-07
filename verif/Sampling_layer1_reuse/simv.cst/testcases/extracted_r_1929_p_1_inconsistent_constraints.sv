class c_1929_1;
    integer i = -320;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1929_1;
    c_1929_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00zz10z0x11xz10zzzx010100z1zzxz0xxxzxxxxzzxzzzxxzzzzzxxzxxzxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
