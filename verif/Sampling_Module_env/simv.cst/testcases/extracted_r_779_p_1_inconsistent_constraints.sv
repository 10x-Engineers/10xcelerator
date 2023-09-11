class c_779_1;
    integer i = 779;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_779_1;
    c_779_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x1xzxxz000x11zxz1zxxz10z0xz1zxzzzzzzzxzzxzxzzzzxzxzxxzxzxzzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
