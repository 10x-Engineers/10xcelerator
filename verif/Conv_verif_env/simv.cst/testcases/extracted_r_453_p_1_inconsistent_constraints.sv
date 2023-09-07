class c_453_1;
    integer i = 453;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_453_1;
    c_453_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxx100z0xz1x1xz0z1zzzx10xxz00xx1xzxxxzzzzzxxzxzxxxzxzxzxxzxzzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
