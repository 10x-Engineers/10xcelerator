class c_539_1;
    integer i = 539;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_539_1;
    c_539_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz11z11101xxxxzxx1z1zx0010xxx100xxxzzzxzzzzzzxxxzxxzxxxzzzxxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
