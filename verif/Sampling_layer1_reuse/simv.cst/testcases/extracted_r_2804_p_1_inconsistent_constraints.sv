class c_2804_1;
    integer i = -466;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2804_1;
    c_2804_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x00x00000xzxzx10xzz1x11z10x1xxxzzxzzxxxxxzzxxzxxzxzzxxzxzxxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
