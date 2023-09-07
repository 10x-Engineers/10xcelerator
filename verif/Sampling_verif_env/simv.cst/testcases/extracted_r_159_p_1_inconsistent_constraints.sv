class c_159_1;
    integer i = 159;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_159_1;
    c_159_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z10x11xx1x0z00x11x1zz0xx10000x0xxzzxxxzxzzzzzxxxzzxzzzzzxxzzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
