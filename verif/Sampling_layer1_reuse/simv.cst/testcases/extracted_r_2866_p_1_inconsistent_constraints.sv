class c_2866_1;
    integer i = -476;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2866_1;
    c_2866_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzx0x1xxx0z1000z1111100xzz10zx10xxzxzxzzzxzxzzxzxzzxzxxxzzzzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
