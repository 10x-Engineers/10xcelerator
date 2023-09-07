class c_181_1;
    integer i = -179;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_181_1;
    c_181_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1xz0xx1x01z0zx000zxzzz0000x110xxxxzxzzzxzzzzxxxxxxxxzxzxxzxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
