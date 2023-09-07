class c_389_1;
    integer i = 389;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_389_1;
    c_389_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x001000z0xxx1101010011z010101x0zxxxzxzzxxxzxzzxxxxxzzzzxxxzzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
