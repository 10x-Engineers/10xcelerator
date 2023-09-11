class c_310_1;
    integer i = -308;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_310_1;
    c_310_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01xx01z11111z01zxx1z0zxz1xxx1z00xzxzxxzzxzxxzxxzzzxzzxxzxzxzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
