class c_320_1;
    integer i = -52;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_320_1;
    c_320_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz01xzz1x01zzx1x0zzz1x0z0xzzz001xzzzxxzzxzxxxxzzzxxzxzzxxxxzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
