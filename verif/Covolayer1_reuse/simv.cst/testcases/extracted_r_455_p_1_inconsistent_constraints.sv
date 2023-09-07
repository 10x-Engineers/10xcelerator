class c_455_1;
    integer i = -453;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_455_1;
    c_455_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzz10zz101xzx0xx1z0xx10x100zx00zxxxzxxxxzzzzxxxxxzxzxxxzxzxzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
