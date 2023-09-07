class c_752_1;
    integer i = -750;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_752_1;
    c_752_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "110zxz00zx1z0z0x0x11zx1x00x0x0z1zxxzxxzxxzxzzzzzxzzxzzzzxzzxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
