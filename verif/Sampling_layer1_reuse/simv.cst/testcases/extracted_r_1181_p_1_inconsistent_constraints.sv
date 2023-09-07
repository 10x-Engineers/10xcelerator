class c_1181_1;
    integer i = -195;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1181_1;
    c_1181_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzz0z01z0z11x0xz1xxzz0x10z11zx10xzzxxxzzxzzxxxzzzzxzzzxxxxzzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
