class c_495_1;
    integer i = 495;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_495_1;
    c_495_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxx01xzx0x1xx0zxzz0010xx1111xz01xzxzzzxzxxzxzzzxzxzxxzzxzzxzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
