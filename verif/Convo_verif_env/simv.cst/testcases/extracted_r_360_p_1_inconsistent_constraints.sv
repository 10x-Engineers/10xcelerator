class c_360_1;
    integer i = 360;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_360_1;
    c_360_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xx11xz0xxz1x1x110z001x01x1010xzzzxzxzzxxxxzxxzzxzzzzzxzzxxxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
