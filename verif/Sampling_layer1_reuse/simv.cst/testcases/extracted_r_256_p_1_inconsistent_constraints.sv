class c_256_1;
    integer i = -41;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_256_1;
    c_256_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00x001010x100x0xx1x00x0z010z1z11zxzzxxzxxzxxxxxzxxxxzzxzzxxxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
