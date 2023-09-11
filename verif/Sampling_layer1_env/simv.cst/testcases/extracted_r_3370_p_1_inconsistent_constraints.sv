class c_3370_1;
    integer i = -560;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3370_1;
    c_3370_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z10xz1z000z10x00000x10x1zz010x1zxzzxxxzxxxzxxzxzzzzxzzzxzzxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
