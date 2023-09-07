class c_3043_1;
    integer i = -506;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3043_1;
    c_3043_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10xxz0xzx00z00z0zxxxzx0z1xzx0z01zxzxxzxzzxxxxxxzxxzzzxxzzzxzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
