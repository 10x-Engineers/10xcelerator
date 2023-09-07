class c_166_1;
    integer i = 166;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_166_1;
    c_166_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0xxz00zz1x01xx1100x00x0z01zx1xzxxzxzzxxxxxxzxxzzzxzxzzzxzzxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
