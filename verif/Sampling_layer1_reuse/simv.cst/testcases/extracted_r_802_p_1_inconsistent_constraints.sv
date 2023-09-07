class c_802_1;
    integer i = -132;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_802_1;
    c_802_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1z01z1zxz1x1zz11x1xx1xz0zzx111xzxxxxxzxxzzzzzxxxxxxxzxxxzzxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
