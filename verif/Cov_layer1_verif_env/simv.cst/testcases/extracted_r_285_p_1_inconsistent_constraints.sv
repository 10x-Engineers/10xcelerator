class c_285_1;
    integer i = -283;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_285_1;
    c_285_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00x10xzz1001xzx01000zx0z11z1100zxxzxxzxxzxxzxxzxzxzxxzzzzxzxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
