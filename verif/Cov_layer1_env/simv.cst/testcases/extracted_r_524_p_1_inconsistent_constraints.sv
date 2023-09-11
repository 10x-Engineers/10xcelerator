class c_524_1;
    integer i = -522;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_524_1;
    c_524_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "111x0zx00z1zz0xz0zzz0zxx01xzzzxxxzxzxxxxxxzxxxxzxzzxxxzzxxzzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
