class c_331_1;
    integer i = 331;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_331_1;
    c_331_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "010x10000xz0z011zxzzxzzz001z0z0xzxxxxzxxxzxxzzxzzxzxxxzzzzxxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
