class c_3256_1;
    integer i = -541;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3256_1;
    c_3256_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z00x0xzzz1xxxzx0xx0000zxzz000z0xxxxzxxzxzzxzzzxzxzxxzxzzxzzzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
