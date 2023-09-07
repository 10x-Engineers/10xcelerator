class c_432_1;
    integer i = 432;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_432_1;
    c_432_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x1xxz0011z01xz00xx0z01z1z1xzz0xxzxxxxzxxxxzxzxxxzxxxxxzzzxxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
