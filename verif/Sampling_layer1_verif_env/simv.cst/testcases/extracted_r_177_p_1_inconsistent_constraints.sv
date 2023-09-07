class c_177_1;
    integer i = -28;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_177_1;
    c_177_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z1x0x10zzzzxzxx0x11z00xzxz000x1zxxxxzzzzzxzxzzzxzxzzxxzzzxxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
