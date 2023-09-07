class c_2168_1;
    integer i = -360;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2168_1;
    c_2168_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxz1z0z1zz1z00x0x01xx01z1zzz11zzxzxzxxxzxxxxzzxxxxxxzxzzzzzxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
