class c_262_1;
    integer i = -260;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_262_1;
    c_262_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x00zz110xzxx110z01zx00zz001xx1x1xzzzzzzzxxzxxxzxzxzzzxzzxzzxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
