class c_2216_1;
    integer i = -368;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2216_1;
    c_2216_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x1x00011x01z1x1zz110xxzx0x000x1zxxzzxxxxxxxzzzzxxzxxxxzzzzxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
