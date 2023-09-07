class c_94_1;
    integer i = 94;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_94_1;
    c_94_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0x110111xx0xzz1z11zz1xxxzx00x11xzxzzxzzxzzxxxzxzxxzxxzzxxzzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
