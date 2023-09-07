class c_244_1;
    integer i = 244;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_244_1;
    c_244_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1111zz0101xx0xz0z1zz100xx11zzzxxzzxzxxzzxzzxxzzxzzxxxxzxxxxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
