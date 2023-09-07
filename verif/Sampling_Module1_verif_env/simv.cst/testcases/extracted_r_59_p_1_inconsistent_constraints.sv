class c_59_1;
    integer i = 59;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_59_1;
    c_59_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00zx010x1zz100x11z1zx1010zxxzxx1zxzxzzzzxxzzzzzxxzzzzxzzzzzxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
