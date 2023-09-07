class c_2816_1;
    integer i = -468;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2816_1;
    c_2816_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10zzz1zxxx0x101zx01z1zzxx1zxzzx0xxxzxzxxxxxzzxzxzzxzxxzzzzxxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
