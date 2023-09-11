class c_778_1;
    integer i = 778;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_778_1;
    c_778_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x01z1x1000xz00xzx1x1zz0xx1xxz1z0zxzzzxzxxxxxxxxzzxzzzxxxzzzzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
