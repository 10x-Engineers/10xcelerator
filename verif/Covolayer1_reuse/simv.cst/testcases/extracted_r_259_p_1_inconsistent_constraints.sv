class c_259_1;
    integer i = -257;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_259_1;
    c_259_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00x11x1100000x0z100001zz10zz0z11zxxzzzxxxzzxzzzxxxzzzzxzxxxxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
