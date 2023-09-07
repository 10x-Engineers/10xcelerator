class c_612_1;
    integer i = -610;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_612_1;
    c_612_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz00x0zxz0xxzzxzz0zzz0x010111xxxxxzxzzzxxxxxzxxxzzzzzxzzxxxxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
