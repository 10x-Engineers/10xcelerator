class c_46_1;
    integer i = -44;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_46_1;
    c_46_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzxzx1100z00x1xx0xzx0zz0zx00xz11xzzxzxzzxzzxzxxxxxzxzxxzxzzxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
