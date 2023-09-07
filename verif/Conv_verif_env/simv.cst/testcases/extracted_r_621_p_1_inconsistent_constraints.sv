class c_621_1;
    integer i = 621;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_621_1;
    c_621_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz1z11111z1x01z1zz1z0z01xxxxz100zzzxxxxxxzzzxxxzzzxzzxzzxzxzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
