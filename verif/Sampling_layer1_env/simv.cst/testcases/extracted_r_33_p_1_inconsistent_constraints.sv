class c_33_1;
    integer i = -4;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_33_1;
    c_33_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x100zzxxzx01z1010x1001zx1x0xz1x0xxzxzzzxzxxxxzxxxxzzxzxzxxzzzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
