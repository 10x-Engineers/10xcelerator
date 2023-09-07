class c_3248_1;
    integer i = -540;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3248_1;
    c_3248_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxx1z0z0x0zx11zz1x1zzz101xx0xz10xzzzxzzzzxzzzxzxzxzzxxxzzzxxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
