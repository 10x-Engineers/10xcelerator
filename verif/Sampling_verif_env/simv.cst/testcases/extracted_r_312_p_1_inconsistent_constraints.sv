class c_312_1;
    integer i = 312;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_312_1;
    c_312_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0z1x11x01xz10x1zx010x010100xzz0xzzxzxxxxxzzzzxxzzzxzzxzzxxzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
