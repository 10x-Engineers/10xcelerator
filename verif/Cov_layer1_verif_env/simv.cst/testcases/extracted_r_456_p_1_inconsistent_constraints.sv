class c_456_1;
    integer i = -454;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_456_1;
    c_456_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zz011zxx1100xxx011x1xxzz01xzx10xxxxzxxxxzzzxzxxzzxzxzzzxzxzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
