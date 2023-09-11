class c_401_1;
    integer i = -399;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_401_1;
    c_401_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx1x01xz01zxzxzzzx101xx1xx1xx000zxzzxxzxzzxzzzzzzxxzzxzxxxxzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
