class c_563_1;
    integer i = -561;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_563_1;
    c_563_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x0zz1zx10zzzx0zz110x111zz1xzz1zzxxzzzzzzzzzxzxzxzzxxxxzxzzzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
