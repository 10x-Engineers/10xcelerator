class c_2678_1;
    integer i = -445;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2678_1;
    c_2678_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx1x01zx00zxxxzzz101zzx01z001xxzxxxxxzxzxzzxxzzzxzxxxzxzxzxxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
