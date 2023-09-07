class c_498_1;
    integer i = 498;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_498_1;
    c_498_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z00011xz00xxz1x1z1z1x0000011zxxzxxxxzzzxxzzxxzzxzxxzxzxxxzxxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
