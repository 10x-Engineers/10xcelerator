class c_135_1;
    integer i = 135;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_135_1;
    c_135_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "001z1z0zz110z100110zx0xzx00zzzxzzzzzxxxzzzxxzzzxzzzzxzzxzxxxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
