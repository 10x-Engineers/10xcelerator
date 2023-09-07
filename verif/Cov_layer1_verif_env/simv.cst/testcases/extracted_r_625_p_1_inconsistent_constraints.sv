class c_625_1;
    integer i = -623;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_625_1;
    c_625_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z11x1zzz01z11x0z001z01xx10xxz0zzxzxxxxxxxxzxzzzxzzzxxzzzxxzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
