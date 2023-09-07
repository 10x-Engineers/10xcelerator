class c_254_1;
    integer i = 254;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_254_1;
    c_254_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01zxzx0z0zxx11zz10z1x0000011001xxzxxxxxxzxxxxxzxxzzxxxzxxxzzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram