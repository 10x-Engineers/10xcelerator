class c_208_1;
    integer i = 208;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_208_1;
    c_208_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxxzx11z00x00001x01z1xzxz0zzz11zzxzzzxxzxzxzzxzzzxxxzxzxzzzxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
