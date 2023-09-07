class c_72_1;
    integer i = -70;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_72_1;
    c_72_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z0xx10xxx0zxxxxx0z0x11z00zzzz0xxxzxzxxxxxzzzzxzzxxxzzzzzzxxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
