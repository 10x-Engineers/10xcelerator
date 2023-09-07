class c_1092_1;
    integer i = -180;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1092_1;
    c_1092_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzx10zz01zz0zzxzzz10xx11z0101xx0zxxxxzxxxzzzzzzxxzxxxzxzxzxzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
