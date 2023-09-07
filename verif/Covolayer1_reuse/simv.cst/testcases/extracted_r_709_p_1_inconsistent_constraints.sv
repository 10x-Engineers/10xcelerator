class c_709_1;
    integer i = -707;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_709_1;
    c_709_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zz001x10zx1xxzx0xxz000xzzzxxz11zxxxxxxxzxzzxzxxxxxzxxzzzzzzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
