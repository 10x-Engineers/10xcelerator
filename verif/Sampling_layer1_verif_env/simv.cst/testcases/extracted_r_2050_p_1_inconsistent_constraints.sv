class c_2050_1;
    integer i = -340;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2050_1;
    c_2050_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z100z1z10zx1x11xz1x1z1x000xzz0zxzzzzxzxxzzzzxxzzzzzxzxxxxxzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
