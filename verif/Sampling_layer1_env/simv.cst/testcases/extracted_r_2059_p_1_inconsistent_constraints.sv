class c_2059_1;
    integer i = -342;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2059_1;
    c_2059_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzzzzz0x0xxxx1x0z11x00xx100z00zzxxxxzzzzxxxxzxxxzzxzzzxxzzzxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
