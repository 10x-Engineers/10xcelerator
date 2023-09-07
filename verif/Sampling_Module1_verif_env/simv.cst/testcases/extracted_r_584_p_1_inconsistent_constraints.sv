class c_584_1;
    integer i = 584;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_584_1;
    c_584_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz100xxx1zx1z01xx11zxx1xx0z00zxzzxzzzzxxzzxxxxxzxxzzzxxzzzxzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
