class c_2306_1;
    integer i = -383;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2306_1;
    c_2306_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01x0z11zzx1z1zx1x0x01z1xxz11z0zzzxzxzzxxxzxxxxxxzxxxzzxzxxxzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
