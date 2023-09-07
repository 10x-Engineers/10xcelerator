class c_544_1;
    integer i = -89;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_544_1;
    c_544_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x01xz0zz000xxzxz100xx01z10xzx1xzzzzzxxzzxxxzxxzzxzxxxxxzxxzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
