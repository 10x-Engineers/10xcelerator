class c_513_1;
    integer i = -511;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_513_1;
    c_513_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z1zx10z1z11z0x0x1xxxx10000z1zxxxzzzzzzzxzxzxzxzxzzxxzxxzzzzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
