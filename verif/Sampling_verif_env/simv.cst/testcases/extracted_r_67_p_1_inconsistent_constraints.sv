class c_67_1;
    integer i = 67;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_67_1;
    c_67_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x01x1z1xxz11x10z1z110101zz0z101xxzzxxzzzxxzzxxzxzxxxzxzxxzzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
