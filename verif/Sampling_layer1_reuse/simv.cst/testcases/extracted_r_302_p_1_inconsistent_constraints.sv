class c_302_1;
    integer i = -49;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_302_1;
    c_302_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0x0x10x0z0x0xx10z11xz10xx000z10xzxzxzzzzxxxxxxzxzxzxxzxxzzzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
