class c_545_1;
    integer i = -543;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_545_1;
    c_545_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz1z11x01100x1x101x1zxxx01xx01z0xxzxxzzxzzzzzzzxxzzxxxxxxxzzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
