class c_612_1;
    integer i = -100;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_612_1;
    c_612_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz01z0x01x1x01011zxxx01x10x0xx0zzzxxzzzxxzxxxxzxzxxxzzzxxzxzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
