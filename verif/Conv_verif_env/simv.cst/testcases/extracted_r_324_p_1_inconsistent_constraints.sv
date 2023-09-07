class c_324_1;
    integer i = 324;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_324_1;
    c_324_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0z1x0xxz00zxxz111zzz11xxz110x11zzxxzxxzzzxzzxzzxxzzzxxzxzxxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
