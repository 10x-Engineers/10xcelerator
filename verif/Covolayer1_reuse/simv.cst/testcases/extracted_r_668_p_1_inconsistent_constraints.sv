class c_668_1;
    integer i = -666;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_668_1;
    c_668_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x1zzz1zzxz10xzx011010z0z01z1zxxxxzxxzxxzxzxzzzxxzxzzzxxzzxxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
