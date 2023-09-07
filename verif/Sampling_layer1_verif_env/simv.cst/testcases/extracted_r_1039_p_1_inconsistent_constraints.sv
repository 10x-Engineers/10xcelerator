class c_1039_1;
    integer i = -172;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1039_1;
    c_1039_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz1101x00x10zxx0011zxz0xx01z11x0xxxzzxxzzzxzxxxxzxzxxxxzxzxxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
