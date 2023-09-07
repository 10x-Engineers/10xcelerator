class c_148_1;
    integer i = 148;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_148_1;
    c_148_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "001000x11xx111100xz01zzz1110x1x1zzxzxxzxxzzxzxxzzzzxxzxzxxxzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
