class c_3267_1;
    integer i = -543;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3267_1;
    c_3267_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01001z0z01z01xz1z000z00zz1011111zxzxxzxxzzxxzxzxxzxxzzzxzzxzzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
