class c_780_1;
    integer i = -778;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_780_1;
    c_780_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1101x1x1zxx011xx0x10z1x0xzzxxxxzxxzzzxzzxzxxxzzxzzzzzzxxzzzzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
