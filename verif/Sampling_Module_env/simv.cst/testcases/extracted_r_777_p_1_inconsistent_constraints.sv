class c_777_1;
    integer i = 777;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_777_1;
    c_777_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zxx1x1010x01110xx0x10z1xzzz1zx0xzxxxxzxxxzxzxxzxzxxzxzzxxxxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
