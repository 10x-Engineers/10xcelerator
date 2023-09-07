class c_125_1;
    integer i = -123;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_125_1;
    c_125_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z01x1x11xxzz01zz1z10x11zxz110x0xzxxzxzzxxzxzzzxxzxzxzxxxzxzzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
