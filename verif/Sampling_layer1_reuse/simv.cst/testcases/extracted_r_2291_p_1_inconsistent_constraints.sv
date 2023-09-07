class c_2291_1;
    integer i = -380;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2291_1;
    c_2291_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z10xz0101x11z0x0z1z00xx01z100z0xxxzxxzxzzzxxxzzxzxzxzzzxzzzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
