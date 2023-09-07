class c_2936_1;
    integer i = -488;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2936_1;
    c_2936_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx1101x000zxx1z1xzz0x0z0x1xx00z1zzxxxxxzxzxzxxxzzxzxxzxzzzzzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
