class c_197_1;
    integer i = -195;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_197_1;
    c_197_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zx0z0xx0111zx01xxx011z1zxxxxx01xzxxzxzxzzzzzzxzzxzxxzzxzxzxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
