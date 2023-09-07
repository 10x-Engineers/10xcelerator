class c_277_1;
    integer i = 277;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_277_1;
    c_277_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00z000z10z0zz01xz01z101x1111x1xxzzxxzzzxzxzxxxzxzzxxxzxzzxzzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
