class c_2944_1;
    integer i = -489;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2944_1;
    c_2944_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xz110xzxxz01x00zz1010zxz1xz0zz1zzxxzxzzxzxzzzzzzxzzxxxzzxzzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
