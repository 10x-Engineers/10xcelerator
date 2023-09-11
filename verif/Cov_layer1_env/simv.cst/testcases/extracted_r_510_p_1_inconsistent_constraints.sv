class c_510_1;
    integer i = -508;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_510_1;
    c_510_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzxz1001zxxxx10011xxx100z0100xx0xxxzxzxzxxxzxzzxzxxzxzxxxxzzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
