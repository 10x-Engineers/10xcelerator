class c_387_1;
    integer i = 387;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_387_1;
    c_387_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10x1z011x0z010xz1xz0011x00z0x0xzzxzxzzzzxxzzzzxzxzxxzxzzxzxxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
