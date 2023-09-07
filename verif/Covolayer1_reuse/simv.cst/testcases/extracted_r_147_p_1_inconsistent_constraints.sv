class c_147_1;
    integer i = -145;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_147_1;
    c_147_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1xxz101z111zxxzz101z0zx11zxx1zzzxxzxxzzzzzxxxzxxxzzxzxzxzzzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
