class c_691_1;
    integer i = -689;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_691_1;
    c_691_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xzxx11x0z1zxxzz1x10z01x0x1xxz10xxxxzzzxxzxzzzxxzxzzxxxzzzzzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
