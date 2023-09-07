class c_319_1;
    integer i = 319;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_319_1;
    c_319_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1xxx0zxxxz0z10zzz1xz1zzzz000x11zzxxzxzzxzxxzxzzxxzzxzzxxzzzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
