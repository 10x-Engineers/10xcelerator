class c_53_1;
    integer i = 53;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_53_1;
    c_53_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxz1xz00110xx0x10x000xz01x11zz11zxzzzxxzzxxzzxxzzzzzxzzzxzxzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
