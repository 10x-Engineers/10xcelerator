class c_2676_1;
    integer i = -444;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2676_1;
    c_2676_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z00z001111z1x00z010000zxxx0xx0x1xzxzzxxxzxxxxxzxxzxzxzxxzxzxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
