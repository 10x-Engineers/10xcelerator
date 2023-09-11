class c_433_1;
    integer i = -71;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_433_1;
    c_433_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zz0z1zx0xx1xzxx1z1z101001z000zzxzzxxzxxzxxzzzxxxxxzxzxxxxzzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
