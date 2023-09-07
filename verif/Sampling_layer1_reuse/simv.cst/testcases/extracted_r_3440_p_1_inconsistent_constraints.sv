class c_3440_1;
    integer i = -572;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3440_1;
    c_3440_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x010zzzx00x101xx00111xzx0z0x100zzxzzzzzzxxxzxxxzxzzxzzzxxxzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
