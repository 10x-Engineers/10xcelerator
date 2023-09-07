class c_1622_1;
    integer i = -269;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1622_1;
    c_1622_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01z1xx0zx1zz001xxzzz11xz0xz1x1xzzxxxxxxzzxxzzzxzxxxxzxxxxxzxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
