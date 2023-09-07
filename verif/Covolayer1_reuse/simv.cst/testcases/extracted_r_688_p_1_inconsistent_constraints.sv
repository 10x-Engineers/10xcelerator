class c_688_1;
    integer i = -686;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_688_1;
    c_688_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xz0x0zxz110xz0xx1z011x0z1x0z00zzzxxzxxxzxxzxxzzxzxxxxzzzxxzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
