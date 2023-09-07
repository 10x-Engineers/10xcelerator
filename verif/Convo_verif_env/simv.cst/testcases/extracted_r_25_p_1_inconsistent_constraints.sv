class c_25_1;
    integer i = 25;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_25_1;
    c_25_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz0xz01zzzz1x110zxx110xz1x1xz111zzzxzzxxxzxzzxzzxxzzzzzzxxzzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
