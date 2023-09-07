class c_341_1;
    integer i = 341;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_341_1;
    c_341_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zz11011z10x1z1z0zzxz000zx10x10zxzzzzzxzxxzxxzzxzzxzxxxxzzxxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
