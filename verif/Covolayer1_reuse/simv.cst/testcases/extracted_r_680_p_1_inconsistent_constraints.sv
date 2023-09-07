class c_680_1;
    integer i = -678;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_680_1;
    c_680_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z00z01xzx11x01z000xzx10zxzzxz0x0zxzzxzxxzxxxxzzxzxzzxzzzzxxxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
