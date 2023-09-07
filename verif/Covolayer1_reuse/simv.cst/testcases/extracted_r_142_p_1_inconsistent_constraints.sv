class c_142_1;
    integer i = -140;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_142_1;
    c_142_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01xzxx0x101z1x11x1zz0x10xxz1x1zxxzxxzzxzzzxzxxxzzzxxxxxzzxxxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
