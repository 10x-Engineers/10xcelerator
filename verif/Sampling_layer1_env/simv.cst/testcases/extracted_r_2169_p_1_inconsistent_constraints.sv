class c_2169_1;
    integer i = -360;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2169_1;
    c_2169_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10z1z0zzzx01001zz1010x0z00z0x0zzxzzxxxzxxzzzzzzxxxxxzxzzzxxxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
