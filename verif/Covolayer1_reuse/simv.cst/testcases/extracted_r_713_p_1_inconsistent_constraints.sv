class c_713_1;
    integer i = -711;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_713_1;
    c_713_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10xzx0xzzx1z1z11zxzz0zzz0101000zxzxxzxxxxxzxzzzzxzxxzzzzzzzzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
