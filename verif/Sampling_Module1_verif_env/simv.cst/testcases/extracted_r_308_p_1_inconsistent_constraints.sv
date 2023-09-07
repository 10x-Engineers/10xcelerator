class c_308_1;
    integer i = 308;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_308_1;
    c_308_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx1zx0xz101zz1xzz0xz1xxx1zx0xz1xxzxzxzxxzxzxxzxxzxxzzzxxxzzzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
