class c_365_1;
    integer i = 365;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_365_1;
    c_365_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx10x0000zx1z011x101zx10zz1xx001xxxzxxzzxxzzxzxxzxzxxzxzxxzxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram