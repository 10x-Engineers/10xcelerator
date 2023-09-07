class c_60_1;
    integer i = -58;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_60_1;
    c_60_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx0z1x11zzx11xx11111z0z0z11x10x1xxxxzzzzxxzzxzxzzzzxzzxzxxzzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
