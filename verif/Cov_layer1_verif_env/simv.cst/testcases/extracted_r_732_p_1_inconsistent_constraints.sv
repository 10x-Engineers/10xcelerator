class c_732_1;
    integer i = -730;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_732_1;
    c_732_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10110xx1x1000zxxz00zxx0x0xzz0z1xxxxzzxzzxzzzzzzxxzzzzzzxxxxzzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
