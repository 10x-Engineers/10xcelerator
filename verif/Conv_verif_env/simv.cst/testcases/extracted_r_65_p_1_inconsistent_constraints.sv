class c_65_1;
    integer i = 65;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_65_1;
    c_65_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10x0xzzzzxz01z01z00zz1z011z1z0zzzxxxxzzxzzxzzxxxzxzxzxxxzxxzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
