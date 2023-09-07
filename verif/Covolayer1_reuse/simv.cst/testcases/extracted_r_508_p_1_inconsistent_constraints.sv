class c_508_1;
    integer i = -506;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_508_1;
    c_508_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0z0z01x10z11xz11zzzx0xx0x0z100xzxxzxzxzxzzzzxxxxxzxzzzxzzzzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
