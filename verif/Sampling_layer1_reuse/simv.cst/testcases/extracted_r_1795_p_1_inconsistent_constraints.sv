class c_1795_1;
    integer i = -298;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1795_1;
    c_1795_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00x1x010z010z00zx01z00xxz0xxzxz1zxzzzxzzxzxxzxzxzxxzxxxzxzxzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
