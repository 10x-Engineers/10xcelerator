class c_625_1;
    integer i = 625;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_625_1;
    c_625_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz0xx0zxxz111x11zzz01x1zx0101xzzxxxxxxxzxxzzxzzzxxxzxzzzzzxzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
