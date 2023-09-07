class c_672_1;
    integer i = -670;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_672_1;
    c_672_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1zz0x1011xz1x001x0x0x0100x10z10xzxxxxxxzxzxzxzxzxxxzxxzxxxzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
