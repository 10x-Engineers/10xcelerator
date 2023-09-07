class c_391_1;
    integer i = -389;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_391_1;
    c_391_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0x1xx01x011z1xzxzz1z10zz11zx1xzxzxxxzzzxxxzxzxzzxxzzxzzzxzzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
