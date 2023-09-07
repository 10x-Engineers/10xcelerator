class c_383_1;
    integer i = -381;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_383_1;
    c_383_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xx11xzz100z10x1x1111zx1xxz111zzzzzxxxzzzzzzzxzzzxxzzxxxzzzxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
