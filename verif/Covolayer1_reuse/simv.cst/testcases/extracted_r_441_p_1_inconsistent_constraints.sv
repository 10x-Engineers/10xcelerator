class c_441_1;
    integer i = -439;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_441_1;
    c_441_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01zz010zxzxx0zxx00011000zx10x0zxzzzxzxxzzxzzzxzxzzxxxzzxxxzxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
