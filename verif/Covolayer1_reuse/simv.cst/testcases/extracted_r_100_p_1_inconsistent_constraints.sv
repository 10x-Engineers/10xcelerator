class c_100_1;
    integer i = -98;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_100_1;
    c_100_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz0011001x0zz0x01xzxz0z1xzx01xzxxxzzzzxzxzzzxxxzzxxxxxzxxzxxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
