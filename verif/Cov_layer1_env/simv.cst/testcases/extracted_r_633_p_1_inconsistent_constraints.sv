class c_633_1;
    integer i = -631;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_633_1;
    c_633_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x0xx111010z0x1zz1x100x0z0z1z111xzxzzxzzxzzxzxxzxzzzzxzzzxzzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
