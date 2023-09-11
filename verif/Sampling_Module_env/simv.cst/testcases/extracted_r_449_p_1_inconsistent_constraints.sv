class c_449_1;
    integer i = 449;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_449_1;
    c_449_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "010xz1zz011z00z00zz0100000z1z1x1xxxzxzzzzxzzxzxzzzxzzzxxxxzxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
