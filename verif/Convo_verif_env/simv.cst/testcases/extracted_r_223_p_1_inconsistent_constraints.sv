class c_223_1;
    integer i = 223;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_223_1;
    c_223_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00011zz1zzzx0z0xz0x10z0xx0z10011xzzxzxzxxxzzzzzzzxzxxzzzzzxzzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
