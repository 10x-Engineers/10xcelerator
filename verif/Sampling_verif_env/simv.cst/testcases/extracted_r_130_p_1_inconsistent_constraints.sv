class c_130_1;
    integer i = 130;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_130_1;
    c_130_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzx11zxx0xxx11zx110x001x00x01xx0zzxxxzxzzzzzxzzxxzzxzzxzzzzzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
