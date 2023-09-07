class c_2108_1;
    integer i = -350;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2108_1;
    c_2108_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z10z1xx0zxz110xz1100z10z00xzz0z0xxzxxxxxzxzzxxzzxzzzxzxxxzzxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
