class c_2243_1;
    integer i = -372;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2243_1;
    c_2243_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz11xz00zzzzx0xz1xxzx1zz001x01z1xzxxxxxzxzzxxzzzxxxxzxxzzzxxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
