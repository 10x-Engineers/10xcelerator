class c_499_1;
    integer i = 499;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_499_1;
    c_499_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1zz01zx1xz000xxx0x110z001110z10xxxzzzxxxzzzxzzxxxzxxzzxzzzzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
