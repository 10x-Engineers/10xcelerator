class c_2814_1;
    integer i = -467;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2814_1;
    c_2814_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0x10xzz0zx10x0x00x0z1xzz00z001xzzzxxzzxxzzzxzxxxzxxzzxzzxzzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
