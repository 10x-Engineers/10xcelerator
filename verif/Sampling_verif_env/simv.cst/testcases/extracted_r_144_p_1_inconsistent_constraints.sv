class c_144_1;
    integer i = 144;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_144_1;
    c_144_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0x10001x1z00z011z01x0z1zx0zx0xzxxzzzxzxxxzxxxxzzxxxzzxxzxzxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
