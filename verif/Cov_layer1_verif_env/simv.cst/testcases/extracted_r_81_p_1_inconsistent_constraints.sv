class c_81_1;
    integer i = -79;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_81_1;
    c_81_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x100zxz1zx0110z01z0z0z001zzxx1x1xzxxxzxxxzxzzzxzzzzzzzxxxxzzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
