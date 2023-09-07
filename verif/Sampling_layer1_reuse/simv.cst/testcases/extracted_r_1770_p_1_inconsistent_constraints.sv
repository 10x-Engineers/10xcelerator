class c_1770_1;
    integer i = -293;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1770_1;
    c_1770_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11000z11zzx0x0100z011010xx11z0x0xzzzzzzxxzzxxzzzzxzzzzzzxzxzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
