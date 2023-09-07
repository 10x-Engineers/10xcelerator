class c_736_1;
    integer i = 736;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_736_1;
    c_736_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z10xz0x1z1xxx1110x1001z1x10x1110zxxzzzzzzzxzxzzxxzxxzzzxzzxzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
