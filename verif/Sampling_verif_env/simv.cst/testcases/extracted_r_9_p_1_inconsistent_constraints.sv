class c_9_1;
    integer i = 9;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_9_1;
    c_9_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zx1xzx0000xx0xz1xx0x11z110x1zz0zxxzxxzzxxxxxzxxzxxzxxzxzzzzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
