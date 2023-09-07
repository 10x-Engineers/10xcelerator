class c_719_1;
    integer i = -717;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_719_1;
    c_719_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz01z1z1z10z10x0zx1x1z011100zz0xzzzzzzzzzzxzzzzxzxxxzzzxzzxxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
