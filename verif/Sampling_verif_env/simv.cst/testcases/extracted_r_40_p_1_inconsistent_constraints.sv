class c_40_1;
    integer i = 40;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_40_1;
    c_40_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "011xx01z0z1x010zx1zxz0xx00010101xxxzzxzzzzxzxxxzxxxxzzxzzzxzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
