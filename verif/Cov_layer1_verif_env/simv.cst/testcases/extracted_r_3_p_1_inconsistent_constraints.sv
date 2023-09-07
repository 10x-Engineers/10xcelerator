class c_3_1;
    integer i = -1;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_3_1;
    c_3_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01zz0z1x1xzz0x110z010xzzz0zz0x00zxxzzzxzzzxxxxxzxzxzzzxzzxzzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
