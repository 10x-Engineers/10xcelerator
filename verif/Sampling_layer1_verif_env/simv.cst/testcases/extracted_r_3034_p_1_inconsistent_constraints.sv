class c_3034_1;
    integer i = -504;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3034_1;
    c_3034_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "100x1x1100xzz0xzxx0z10x1z10xzzxxxzxzzxzzzxzxzzxxzxzzzxxzzxzzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
