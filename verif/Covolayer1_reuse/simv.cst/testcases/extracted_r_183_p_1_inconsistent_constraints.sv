class c_183_1;
    integer i = -181;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_183_1;
    c_183_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zxx10110zzz00xxx01101zzx00x1zz0zzzzzxzzzxzzxxzzxzzxxxzxxxzxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
