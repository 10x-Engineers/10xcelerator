class c_403_1;
    integer i = -401;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_403_1;
    c_403_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0x01xx1x0010z1zxz1101001xxzx1xxzxxzxzxxzxzxxzxzzzzzxxzzxzzxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
