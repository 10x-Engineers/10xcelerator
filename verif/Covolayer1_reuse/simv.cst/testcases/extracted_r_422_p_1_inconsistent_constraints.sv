class c_422_1;
    integer i = -420;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_422_1;
    c_422_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x0z1111z1x01zxz10z01zxxzx0zxx0xzxxxxzxzxxzzzzxzzzxzxxxzxxzxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
