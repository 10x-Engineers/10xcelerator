class c_57_1;
    integer i = -8;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_57_1;
    c_57_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxzxx01z0z00zxzzzx0011z01000xx00zxzzzzzxxzxxzzxxxxxxzxxxxzxzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
