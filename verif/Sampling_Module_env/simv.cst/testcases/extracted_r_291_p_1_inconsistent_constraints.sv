class c_291_1;
    integer i = 291;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_291_1;
    c_291_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx01xx110101101zzx01010x1zz1xx1zzxzxzxxzzzzzzzxxxzzzzxzzxzxzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
