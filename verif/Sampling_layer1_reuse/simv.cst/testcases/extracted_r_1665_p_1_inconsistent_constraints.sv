class c_1665_1;
    integer i = -276;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1665_1;
    c_1665_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx01z01xxzzxx10x01z1zzzxz01z00z1zzzzzxzzzxzzxxxzxxzzzzxzzxzxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
