class c_682_1;
    integer i = -680;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_682_1;
    c_682_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xx0zx1z1111z010z11x0x0x01z1x10xzxzzzxzzzxxxzzzzxzzxzzxxxxzxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
