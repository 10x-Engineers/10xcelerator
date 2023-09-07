class c_253_1;
    integer i = -251;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_253_1;
    c_253_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0zz1x101z1x011x110x1xzxx0z11z11xxzzzzxxzzxxzzxxxzxzxxxzzzzzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
