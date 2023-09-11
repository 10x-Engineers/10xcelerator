class c_22_1;
    integer i = 22;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_22_1;
    c_22_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xzx00z1x10z01xzzxz10xzz10xx1zx0zzxzzxzzzxzzzzxxzxzxxzxxzxzxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
