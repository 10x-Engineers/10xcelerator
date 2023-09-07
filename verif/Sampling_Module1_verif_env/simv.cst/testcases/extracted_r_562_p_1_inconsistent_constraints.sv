class c_562_1;
    integer i = 562;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_562_1;
    c_562_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz1z1011z1xxx010xxzx0z0zzzz0xz1xxzxzxxzzzzxzxzzzzzzxxzxxzzxxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
