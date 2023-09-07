class c_301_1;
    integer i = 301;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_301_1;
    c_301_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x010x111zzxxxxx0zzz0011xxz1zx1x1zxxxzxxzzxxxxxzzxxzzzxzxzxzxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
