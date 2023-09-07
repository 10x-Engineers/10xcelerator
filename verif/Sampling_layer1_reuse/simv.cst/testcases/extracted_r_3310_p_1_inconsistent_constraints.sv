class c_3310_1;
    integer i = -550;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3310_1;
    c_3310_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xx1x0xz01010z10z1z001x0xzz0z11xxzxzzzzxzzxxxzxzxzzxzxxxxxxzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
