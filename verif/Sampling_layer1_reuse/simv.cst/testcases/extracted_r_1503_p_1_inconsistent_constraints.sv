class c_1503_1;
    integer i = -249;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1503_1;
    c_1503_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz1zxxxz10x0zzxx01z00xzx110z10x1xzxxxzzxzxxxzzxzzzxxzzzzzzxxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
