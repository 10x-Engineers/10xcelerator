class c_2807_1;
    integer i = -466;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2807_1;
    c_2807_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "100z1101101x001xxxxzz0111x01z0x0zxzzxxxzzxzxzxxxxxzxxxzzzxzxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
