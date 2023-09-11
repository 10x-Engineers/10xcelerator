class c_1480_1;
    integer i = -245;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1480_1;
    c_1480_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10zz01z00zxzx0xz0xxzx11zzx0z0z00xxxzzzxxzxxzzxxzzxxxxzzxzzxxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
