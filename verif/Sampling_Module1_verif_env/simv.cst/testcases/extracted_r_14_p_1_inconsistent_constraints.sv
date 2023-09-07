class c_14_1;
    integer i = 14;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_14_1;
    c_14_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1z111z0z1zz1xxz00xx010z1x10zzz1zzzxxzxzxxzxxzxxzxzxzzxxxxzxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
