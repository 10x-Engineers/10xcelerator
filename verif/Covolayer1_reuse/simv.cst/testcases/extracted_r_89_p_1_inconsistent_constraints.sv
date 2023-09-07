class c_89_1;
    integer i = -87;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_89_1;
    c_89_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz1zx10zx10z0z1z0zx0z100z011xx0xxxxxzzzzxzzzxxzxxzxxzxxzzxxzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
