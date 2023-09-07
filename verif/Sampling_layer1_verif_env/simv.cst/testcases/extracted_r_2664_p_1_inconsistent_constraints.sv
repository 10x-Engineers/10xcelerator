class c_2664_1;
    integer i = -442;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2664_1;
    c_2664_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01z001z10x0xxzz001z011x01001011zxxxzzxxzxzxzxxzxxxxzxzzxxxzzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
