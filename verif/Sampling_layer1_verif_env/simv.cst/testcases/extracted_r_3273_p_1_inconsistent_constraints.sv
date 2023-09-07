class c_3273_1;
    integer i = -544;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3273_1;
    c_3273_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxzz0x110z1zzz1z11zx00x111xxx01xzxxzxzzzxzxxxzzzzxxxzzxzzzxzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
