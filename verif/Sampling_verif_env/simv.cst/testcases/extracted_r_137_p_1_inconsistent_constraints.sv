class c_137_1;
    integer i = 137;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_137_1;
    c_137_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z0zx00z1001z01x1x0xzxxzxx0z0zzzxzzxzzzxzxzxxxzxzzxzzzzxxzzzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
