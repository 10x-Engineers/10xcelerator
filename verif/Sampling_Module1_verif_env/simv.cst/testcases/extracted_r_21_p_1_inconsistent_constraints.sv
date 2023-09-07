class c_21_1;
    integer i = 21;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_21_1;
    c_21_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01xzxxzxzxz0z0xx0zzxz1111zz1z1zzxxxzzxzzxzxzxzxzzxzzxzzxzxxxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram