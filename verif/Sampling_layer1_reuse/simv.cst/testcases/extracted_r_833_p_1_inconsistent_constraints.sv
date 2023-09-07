class c_833_1;
    integer i = -137;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_833_1;
    c_833_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xzx00z1xxxxz0x0010x0xzzxz0zzx01zxxzxzxxzxzxxxzxzzzzxzxxxzzzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
