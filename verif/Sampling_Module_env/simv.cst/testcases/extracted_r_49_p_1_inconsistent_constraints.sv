class c_49_1;
    integer i = 49;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_49_1;
    c_49_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1x00z00zzx0x1zz0110xz0zz1101z11zxxxxxzxzxxzzxxzxzzzzzzzzzxzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
