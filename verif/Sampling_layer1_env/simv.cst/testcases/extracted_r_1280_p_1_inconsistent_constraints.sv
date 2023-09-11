class c_1280_1;
    integer i = -212;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1280_1;
    c_1280_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00z1zzx11zzz111zzx11x00z11xxxxx0zxxzzzxxxxzxzxzxxzzzxxxxzzzzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
