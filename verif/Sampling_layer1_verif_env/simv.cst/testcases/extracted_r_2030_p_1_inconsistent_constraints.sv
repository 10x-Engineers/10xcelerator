class c_2030_1;
    integer i = -337;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2030_1;
    c_2030_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00zzx011000x0z0x0xzxz000z100100xxxxxxzxzxzzzxzzxxxzzzxxxxxxxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
