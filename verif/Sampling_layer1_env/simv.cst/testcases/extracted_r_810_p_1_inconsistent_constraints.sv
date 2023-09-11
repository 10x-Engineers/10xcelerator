class c_810_1;
    integer i = -133;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_810_1;
    c_810_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1x0110xz0x1x1zzx010z01x0x00zxx0xzzxxzxzzxxxzzxzxxzzxzzzxxzzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
