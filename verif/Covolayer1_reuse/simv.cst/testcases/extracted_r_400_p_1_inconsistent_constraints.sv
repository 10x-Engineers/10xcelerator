class c_400_1;
    integer i = -398;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_400_1;
    c_400_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz101zz1zxx000zx11x10z0xx0z1xz0xzxxzzxxxxxzxzxxzxxzxzxzxxxxxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
