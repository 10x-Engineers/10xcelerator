class c_225_1;
    integer i = -223;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_225_1;
    c_225_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0x01x1zz011x01z1xx10x1z1xzz001zxxzxxxzzzzxxzzxzxxxxxzzxzxzzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram