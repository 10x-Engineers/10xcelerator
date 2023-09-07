class c_556_1;
    integer i = -554;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_556_1;
    c_556_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0x1001xx1xx10z0101z01z1zx0zx0xzxzxxzzxzzzxxzxxxzzxxxxzzxzzzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
