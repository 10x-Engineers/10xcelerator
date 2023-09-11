class c_93_1;
    integer i = -91;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_93_1;
    c_93_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z0xxzz111x0zxzx1110101zzxz110x0xzxzxxzzzzxzxzxzzxzzxxzzxxzxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
