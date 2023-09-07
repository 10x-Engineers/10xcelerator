class c_782_1;
    integer i = -780;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_782_1;
    c_782_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "101zz100x0zzz10xxzzz11xx1011x1z1xzxxzzxxzzxxxzxxxzzzxxxzxxzzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
