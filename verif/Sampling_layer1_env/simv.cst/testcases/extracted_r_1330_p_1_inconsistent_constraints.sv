class c_1330_1;
    integer i = -220;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1330_1;
    c_1330_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzxxzzz1xzx0xx00xx0zz1x00z10xx10zzxzxxxzxxxzzzxxzzzxxzzxxzxxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
