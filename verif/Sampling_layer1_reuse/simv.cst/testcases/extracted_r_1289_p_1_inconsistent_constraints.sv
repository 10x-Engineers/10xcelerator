class c_1289_1;
    integer i = -213;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1289_1;
    c_1289_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z0101xz100zzx110xx0xz10x01zxx0zzxzzxzxzzxzxxxzzxzzzxxzzzzzzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
