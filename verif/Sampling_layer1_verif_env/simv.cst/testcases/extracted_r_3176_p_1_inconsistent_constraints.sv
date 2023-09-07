class c_3176_1;
    integer i = -528;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3176_1;
    c_3176_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x01z0xxz0zxz011x10001z1x10z01z1xzzzxxxxzzxzzxxzxxxzxxxxxzxzxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
