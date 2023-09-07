class c_559_1;
    integer i = 559;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_559_1;
    c_559_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x10xx1x1xxx0xxxz0xxx10x10111zzxxxzxzxzzxxzxxxzxzzxxxzzzzzxzzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
