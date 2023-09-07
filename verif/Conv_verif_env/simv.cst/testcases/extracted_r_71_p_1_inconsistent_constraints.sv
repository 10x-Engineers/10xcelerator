class c_71_1;
    integer i = 71;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_71_1;
    c_71_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zz1z11xzx1z00x10zx00xzxx0xxxx10zzxxxxzxxzxxxzxzzzxzxxxzzxzxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
