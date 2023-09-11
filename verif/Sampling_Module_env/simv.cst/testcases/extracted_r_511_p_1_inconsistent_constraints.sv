class c_511_1;
    integer i = 511;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_511_1;
    c_511_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxx100zx11z01zz1xxz01xzxz0100zx1zxzxzzxzxxxxzxzxxxxzzzzxzzxxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
