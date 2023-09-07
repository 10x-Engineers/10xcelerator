class c_755_1;
    integer i = 755;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_755_1;
    c_755_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0x0101xx01zx01zxx1x110xxz110x00zzxzxzxxzxzxxxzxzzzxzzzzzxzzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
