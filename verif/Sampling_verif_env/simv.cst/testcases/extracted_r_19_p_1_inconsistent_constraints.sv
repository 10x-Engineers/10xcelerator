class c_19_1;
    integer i = 19;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_19_1;
    c_19_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11xz1011z0zzzz1000z10x000x11000zxzzxxzzxxzzxzxxxxzxzzzxxxzzzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
