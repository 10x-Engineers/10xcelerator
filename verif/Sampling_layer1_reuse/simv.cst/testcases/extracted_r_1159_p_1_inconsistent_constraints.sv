class c_1159_1;
    integer i = -192;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1159_1;
    c_1159_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxzx10x0xx1xz1x0zxx0zxzxxx0xz11xzxxxzxxxxzzxzzxzzxzxxxxxxzzzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
