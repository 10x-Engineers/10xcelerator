class c_42_1;
    integer i = -40;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_42_1;
    c_42_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x0xx0zxx01zx1001100x1xx1xx0z001xxzzzxxzzxzzxxxzxxxzzxxxzxxxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
