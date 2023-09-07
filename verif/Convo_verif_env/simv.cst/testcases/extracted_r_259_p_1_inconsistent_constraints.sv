class c_259_1;
    integer i = 259;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_259_1;
    c_259_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "111z0x100x1x10x101z1z0z1z0x1x0z1xxxzxzxzxxzxxxzzxzzxxxzzxxxzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
