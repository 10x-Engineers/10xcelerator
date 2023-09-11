class c_172_1;
    integer i = 172;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_172_1;
    c_172_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00x1101z0xzz0zzxx1xxx0zzzxzxxzz0xxzzxxzzxxxxzzxxzxxxzzzxxzzzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
