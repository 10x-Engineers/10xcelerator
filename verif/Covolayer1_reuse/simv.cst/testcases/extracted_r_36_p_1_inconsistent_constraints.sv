class c_36_1;
    integer i = -34;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_36_1;
    c_36_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1z1xxzzzxzz00xx0100x0xxxzz10x11xzxxzxzzxzxzxxzzzzzxxzxxxzxzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
