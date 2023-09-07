class c_2500_1;
    integer i = -415;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2500_1;
    c_2500_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10zz11x00z01xzzz1x01z00zzx11z1xzzxxxxzzxxzxzxxxxxzzzxxzzzxxzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
