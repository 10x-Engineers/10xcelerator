class c_380_1;
    integer i = 380;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_380_1;
    c_380_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01zx01xx1zxx1xxzzz001000000x0x11xzxxzzxzzxzxxzzxzxxxxxzzzxzxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
