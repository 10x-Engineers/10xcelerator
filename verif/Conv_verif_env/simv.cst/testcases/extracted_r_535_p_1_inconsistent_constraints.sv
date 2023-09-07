class c_535_1;
    integer i = 535;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_535_1;
    c_535_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "111001z01z00x1x110x00xz11x1x0z0zxxzzzzzzzzzzzxzxxzxxxzxzxxzxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram