class c_2088_1;
    integer i = -346;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2088_1;
    c_2088_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz00111z1zx1x0z111zx1zz0zz101xzxzzzxxzxzxzxzxxzxzxzzxzxxxzxxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
