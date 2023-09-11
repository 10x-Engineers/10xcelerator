class c_645_1;
    integer i = -643;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_645_1;
    c_645_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00x1010z11z01xz0xzxz0000x11zxxx0xzxzzxxzxxzxzzzxzzzzzzxxxzzzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
