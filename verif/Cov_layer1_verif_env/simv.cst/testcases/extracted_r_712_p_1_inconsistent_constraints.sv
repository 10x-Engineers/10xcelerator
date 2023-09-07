class c_712_1;
    integer i = -710;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_712_1;
    c_712_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xxzz10xzz000zxz0x00zx0z00xxxz01xzzxxxxzzzzxzzxxxxxxxzxzzxxzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
