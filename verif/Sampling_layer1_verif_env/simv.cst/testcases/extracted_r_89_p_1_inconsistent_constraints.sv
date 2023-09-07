class c_89_1;
    integer i = -13;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_89_1;
    c_89_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxxz1x1101xz010x00xx1x0111x01zx1xzzxxxxzzxzxxzxxzzxxxxzzxzxxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
