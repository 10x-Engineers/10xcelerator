class c_3089_1;
    integer i = -513;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3089_1;
    c_3089_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0zxx11010zz10x0xxzz0x00xzx00x01xzxzxzzxzxxxxxxzxzxzxxxxxxzxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
