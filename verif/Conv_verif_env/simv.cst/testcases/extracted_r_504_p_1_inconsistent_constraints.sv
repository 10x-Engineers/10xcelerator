class c_504_1;
    integer i = 504;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_504_1;
    c_504_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz10x1xxzzz1z1xx1x110zxx0111zx0zxzzzzzxzzxxzzxxxxzzzzzxzxzzzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
