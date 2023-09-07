class c_2938_1;
    integer i = -488;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2938_1;
    c_2938_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x00x1z0xx01z11z00xx111x1xx1z0101zzzzxxzxxxxzxxxzzxxxzzxzzzxxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
