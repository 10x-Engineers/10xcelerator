class c_1403_1;
    integer i = -232;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1403_1;
    c_1403_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z11z0z11x1zx1x10000xzz10x1zxx1zzxxxxxzzxzzzzxxzzxxxxxxzxxzxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
