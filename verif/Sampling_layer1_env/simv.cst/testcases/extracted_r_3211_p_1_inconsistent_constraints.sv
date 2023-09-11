class c_3211_1;
    integer i = -534;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3211_1;
    c_3211_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x010xz0xz0xx1xxxz1001z01z1zx0000xxxzxzzzzzzxzxzzzxxxzxxxzxxzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
