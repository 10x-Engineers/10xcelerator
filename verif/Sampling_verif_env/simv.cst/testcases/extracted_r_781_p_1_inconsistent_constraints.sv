class c_781_1;
    integer i = 781;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_781_1;
    c_781_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "000110zxxx0x0xx1xx100z100xzxxzxzzxzzzzxzzxxxzzzxzxzzxxxxzzzzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
