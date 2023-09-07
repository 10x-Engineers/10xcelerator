class c_674_1;
    integer i = -672;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_674_1;
    c_674_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx1zzzz0x11z011z111010100xzzz110xxxxzzzxzxxxzxzxzzzzxzxzzxzxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
