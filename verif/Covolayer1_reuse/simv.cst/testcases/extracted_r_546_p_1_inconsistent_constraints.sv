class c_546_1;
    integer i = -544;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_546_1;
    c_546_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzzz0zzx1110z00xzxz11xx1110zz00zxxzzxxxxxxxzzxxxzxxzzzxzzzxxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
