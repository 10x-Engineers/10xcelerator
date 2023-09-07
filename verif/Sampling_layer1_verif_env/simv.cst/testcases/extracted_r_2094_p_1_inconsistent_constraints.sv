class c_2094_1;
    integer i = -347;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2094_1;
    c_2094_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx1110x00z0z00x00000zz1xx0z00xxxxzzzxxzxxxxzxzzzzxzxzzzxxzzzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
