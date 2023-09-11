class c_468_1;
    integer i = -76;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_468_1;
    c_468_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzzzxz001z11z0x0z0xx0xzx10xx01xzzxxxxzzzzzxxxxxxzxxxzzxzzxzzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
