class c_1501_1;
    integer i = -249;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1501_1;
    c_1501_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "110zzx0xxzx000xz001z0x0z0xz1z1x0xzxxxxzzzxzzzzzzxxzxzxzzzzzxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
