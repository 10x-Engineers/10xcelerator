class c_211_1;
    integer i = -34;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_211_1;
    c_211_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zxzxzz11xx01xzz1zzz001z111011xxxzxzxxzzzzxxzxxxzzzzxxxzxzzzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
