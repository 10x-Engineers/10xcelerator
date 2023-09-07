class c_135_1;
    integer i = -133;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_135_1;
    c_135_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1zz1z1xzz1xxz0110x1zxx00zxxz0xzzzxzxxzzxzzzxxzxxxzzxxzxxxxxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
