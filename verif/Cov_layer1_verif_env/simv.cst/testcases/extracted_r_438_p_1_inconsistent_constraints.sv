class c_438_1;
    integer i = -436;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_438_1;
    c_438_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1011zz11xx0111100z011xzz0z0x1z0zxxzxxzzxzxxxzzxxxxzxxxzxzxxzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
