class c_508_1;
    integer i = 508;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_508_1;
    c_508_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1100z00z1xzx001x1x1x11x1110x0x1zzzxxxxxzzxxzzzzzxzxzzxxxxxxzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
