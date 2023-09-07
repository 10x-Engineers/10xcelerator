class c_242_1;
    integer i = -240;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_242_1;
    c_242_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzzzz0x11x0x0000z10z1zxx100x00xzxzxzzzxzxzxxzzxzzzzxxxxxzzxzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
