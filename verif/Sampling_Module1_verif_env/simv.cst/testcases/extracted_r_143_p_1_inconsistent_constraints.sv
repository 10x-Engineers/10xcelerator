class c_143_1;
    integer i = 143;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_143_1;
    c_143_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z11xxzzxxx0zz000x101z101100z011xzxxxxxxxzxxzxzzzxxzxxxzxxxzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
