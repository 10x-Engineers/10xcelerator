class c_1623_1;
    integer i = -269;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1623_1;
    c_1623_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1zxxz1z0x10x0x11xzz1z1zzxx00z01xzzxxzzxxxzzzzxxxxzzxzzxzzzxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
