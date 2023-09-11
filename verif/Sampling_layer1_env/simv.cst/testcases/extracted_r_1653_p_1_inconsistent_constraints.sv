class c_1653_1;
    integer i = -274;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1653_1;
    c_1653_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz11x1x01z0z00z11zzxzx01xxz0xz1zxzxzxxzzzzzxxzxzxzxxzzzxzzxxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
