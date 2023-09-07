class c_2251_1;
    integer i = -374;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2251_1;
    c_2251_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "100z0zzz00zz0x0xz00z0001010x0z1zxzzzxxxzxxzzxzzxzzxzzzxxzxzzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
