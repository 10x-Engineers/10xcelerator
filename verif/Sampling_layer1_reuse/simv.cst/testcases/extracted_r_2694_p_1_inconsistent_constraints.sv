class c_2694_1;
    integer i = -447;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2694_1;
    c_2694_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzzxz1x00zxx001zzz0xx0zxx01z01zxxxxxzzxzxxxzxzxxzxzzzxzzzxzzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
