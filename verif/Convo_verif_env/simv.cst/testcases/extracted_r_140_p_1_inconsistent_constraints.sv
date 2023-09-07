class c_140_1;
    integer i = 140;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_140_1;
    c_140_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzx0zzxxz11z1000xxz1zx00101xx10xxxzzzxzzxzxxxzzzzzxzxzxxxxxxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
