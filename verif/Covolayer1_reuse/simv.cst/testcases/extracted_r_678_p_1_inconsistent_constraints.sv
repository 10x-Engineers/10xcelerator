class c_678_1;
    integer i = -676;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_678_1;
    c_678_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z100x0zx101xz0xxzzz01zx0xxxzx0zzzzzxxxzxzxzzzzzxxzxzxzzxzxzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
