class c_630_1;
    integer i = 630;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_630_1;
    c_630_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x10001z01xxxx11101xxx00z101x1011xxxzzzzzzxxxxxxzxzzxxzxxzxzzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
