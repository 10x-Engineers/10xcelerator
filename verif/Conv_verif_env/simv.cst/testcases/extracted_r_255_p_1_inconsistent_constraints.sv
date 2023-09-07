class c_255_1;
    integer i = 255;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_255_1;
    c_255_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxzzz11x001zxz10x0101x0zxxx10zx0xxzzzzzzxxzzxzzzzxzzzxxxxxxzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
