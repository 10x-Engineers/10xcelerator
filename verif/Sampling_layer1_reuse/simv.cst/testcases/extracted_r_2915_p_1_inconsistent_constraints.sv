class c_2915_1;
    integer i = -484;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2915_1;
    c_2915_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0x0z1z0zxx1x0zzx1x110zxz01xx1zxxxzxzxzxxxzxzxzzzxzxzzxzzxzxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
