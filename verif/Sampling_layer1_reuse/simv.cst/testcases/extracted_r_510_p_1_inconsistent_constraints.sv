class c_510_1;
    integer i = -83;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_510_1;
    c_510_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x110zxx101zx1z0xx01z00x1z0zx1101zzzzxxzxxxxzzxxxzzxzzzzzxxxxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
