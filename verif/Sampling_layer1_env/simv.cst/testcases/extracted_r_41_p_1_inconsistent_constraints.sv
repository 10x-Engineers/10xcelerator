class c_41_1;
    integer i = -5;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_41_1;
    c_41_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx1000zxx0001zx0xzzxx1x01x1z10x1zzzzxzzxzzzxzzxxzxxxxzzzzxzzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
