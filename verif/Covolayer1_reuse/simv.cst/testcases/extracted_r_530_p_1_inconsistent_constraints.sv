class c_530_1;
    integer i = -528;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_530_1;
    c_530_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "101x0x1101z1z1z01z11x10xzz1z1x1zxxxxxzxxxzzzxxzxxzzxzzxzxzxxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
