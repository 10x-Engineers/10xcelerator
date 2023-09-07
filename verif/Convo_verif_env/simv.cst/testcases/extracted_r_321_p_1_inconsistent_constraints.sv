class c_321_1;
    integer i = 321;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_321_1;
    c_321_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01zxzx110z011xz00zx0zz0z1x11x0xzxzzxxzzxxxzxxzxzzxzzxzzzxxxzzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
