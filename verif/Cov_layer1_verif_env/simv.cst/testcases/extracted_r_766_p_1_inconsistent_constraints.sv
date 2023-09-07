class c_766_1;
    integer i = -764;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_766_1;
    c_766_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzz1x01z1x0zxxx0xxx1x111zx011zx0xxxxxxxxzzzxxxxxxzxxxxzxxzxxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
