class c_187_1;
    integer i = -185;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_187_1;
    c_187_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01x0zz11z1zxz1zzxxz01100x110x0xxxxzzxxzxxxxzxxxzxzxzzxzzxzxxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
