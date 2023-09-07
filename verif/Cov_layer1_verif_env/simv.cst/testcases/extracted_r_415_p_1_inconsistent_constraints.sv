class c_415_1;
    integer i = -413;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_415_1;
    c_415_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1z0x0z011z01z1zz11x0x1100101z01xxxxzzxzzzxzzxzxxxxzxzzzxxxzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
