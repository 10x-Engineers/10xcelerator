class c_3251_1;
    integer i = -540;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3251_1;
    c_3251_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x111zzxzxz0001001z00xz01z0z01x1zzzxzzxxzzzzzxxxzxzzxzxxxzxzxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
