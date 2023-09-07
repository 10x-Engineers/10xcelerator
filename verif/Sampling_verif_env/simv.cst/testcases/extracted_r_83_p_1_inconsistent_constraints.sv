class c_83_1;
    integer i = 83;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_83_1;
    c_83_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x1x100010xzxx100x010011z1x100z1zxxxxxxzxxxzzzzzzzxzzzxxxzzzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
