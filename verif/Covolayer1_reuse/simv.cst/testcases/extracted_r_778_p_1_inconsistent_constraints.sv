class c_778_1;
    integer i = -776;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_778_1;
    c_778_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzz11x111x1xz0xx0x101z0z0xz1zz11zzxzzzxzxxxzxzzzxxzxxxxzzxxxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
