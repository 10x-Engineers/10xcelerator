class c_533_1;
    integer i = 533;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_533_1;
    c_533_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11zz01z1xxzx1z00111x10xx10x1x0xxzxxxzxxxxxxzxzzxxzxxzzxzxzzzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
