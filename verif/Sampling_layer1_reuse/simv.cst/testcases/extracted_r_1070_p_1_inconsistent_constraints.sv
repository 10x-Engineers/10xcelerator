class c_1070_1;
    integer i = -177;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1070_1;
    c_1070_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x10z1x0x00z10z0zzxxx0zzxxzz11x1xxxzzzxxxzzxzxzzzxxxxzzzxzzxxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
