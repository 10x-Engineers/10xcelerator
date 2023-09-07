class c_2290_1;
    integer i = -380;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2290_1;
    c_2290_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xx1zx00z0zz1xz000z0z10x0xx1x00zxzxxxxxxzzzxxxxzzxxzzzzxzzxzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
