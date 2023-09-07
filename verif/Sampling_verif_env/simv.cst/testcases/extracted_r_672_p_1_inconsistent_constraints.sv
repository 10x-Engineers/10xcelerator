class c_672_1;
    integer i = 672;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_672_1;
    c_672_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz101x110x11z1z11z0z1xz0zxzx00z0zxzzzxzzxzxzzxzzxzzzxzxzxzxxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
