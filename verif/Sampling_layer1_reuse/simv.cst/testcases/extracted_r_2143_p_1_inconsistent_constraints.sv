class c_2143_1;
    integer i = -356;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2143_1;
    c_2143_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zx11101zxxx10z0zxxx01z1x0x0z11xxzxxxzxxxxzxxxzxzxxxxxzxzzxxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram