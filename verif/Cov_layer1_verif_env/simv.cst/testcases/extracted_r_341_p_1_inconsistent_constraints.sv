class c_341_1;
    integer i = -339;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_341_1;
    c_341_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zxzz010xz01001xxxx0zx101zxz0xx0xzxxzzxxzxxzxzzxzxxzxzxxzxzxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
