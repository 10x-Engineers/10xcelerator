class c_2423_1;
    integer i = -402;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2423_1;
    c_2423_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xx01zz0xx11xx1x0x11z0z00011z00zxxxxxxxxxxzxxxzxxxxxzzxxxxxzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
