class c_1312_1;
    integer i = -217;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1312_1;
    c_1312_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zx0zzz1zzxxz0xzzx0zx01z011xzx00zxzxzxxxzxxzzxxxzxxxzxxzzzxxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
