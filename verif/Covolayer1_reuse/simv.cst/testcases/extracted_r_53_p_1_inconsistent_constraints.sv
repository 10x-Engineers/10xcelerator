class c_53_1;
    integer i = -51;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_53_1;
    c_53_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x110xz000zzx10x01z1zzzxz000x1101zxxxxzzzzxzxxzxzzzzxxxxzxzxzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
