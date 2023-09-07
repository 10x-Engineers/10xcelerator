class c_1615_1;
    integer i = -268;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1615_1;
    c_1615_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z1x11z11xx10xz011xzx1100x0x1zzzxxxxxzxzzzxzzzxzzxxxxzxxxzzxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
