class c_50_1;
    integer i = -48;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_50_1;
    c_50_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1zxzx01zzz11xxz1zxz0x11zz1z100zzxxxxxzxzxxxzzxxxzzxxxzzxzzzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
