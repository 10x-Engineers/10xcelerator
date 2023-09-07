class c_167_1;
    integer i = 167;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_167_1;
    c_167_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0111x10xzzx1z11x0x10zxzxzzzx0x0zzxxxzzxxzzzxzxxxzzxxxxzxxzzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
