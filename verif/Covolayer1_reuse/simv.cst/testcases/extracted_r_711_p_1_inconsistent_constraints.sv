class c_711_1;
    integer i = -709;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_711_1;
    c_711_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxzzxxx111x10110z10xxz1110zzz10zxxxxxxzxzzxxxxxzxxxxxxzzxxxzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
