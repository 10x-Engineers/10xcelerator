class c_611_1;
    integer i = 611;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_611_1;
    c_611_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1zz11z0zzzzxx0xz0x1x00z1xx0xzz1zxxzxzxzxzxzzxzzxxzzzzzzzxzxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
