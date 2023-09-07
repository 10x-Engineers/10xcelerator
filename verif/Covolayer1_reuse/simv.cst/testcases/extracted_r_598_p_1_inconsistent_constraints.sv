class c_598_1;
    integer i = -596;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_598_1;
    c_598_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x011x0x11x0xz01zx00xz01zz0zz1010zzzzxxzzzxzxxzxxzxzxxxxzzxxxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
