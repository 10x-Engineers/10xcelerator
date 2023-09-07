class c_64_1;
    integer i = 64;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_64_1;
    c_64_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0111101x1101000zz0xxz0zzx10z1x1zxxzxxzzzzzxzxxxxxzzxxxxxxzxxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
