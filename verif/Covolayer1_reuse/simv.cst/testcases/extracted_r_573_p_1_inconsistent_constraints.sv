class c_573_1;
    integer i = -571;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_573_1;
    c_573_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz1z0xzx0z0000z1x1zx1z0x00001zxxxxxzzzxzzxxzxzzzzzzxzxzxzxzxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram