class c_1582_1;
    integer i = -262;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1582_1;
    c_1582_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx01000xx1xz01z1z0011zx101z1xx1zxzzzxzxzzxxzzxzzzzxxzxxxxxzzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
