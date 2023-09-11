class c_701_1;
    integer i = -115;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_701_1;
    c_701_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zxzz1zx1z01z1x0xz1xz0x1z1z110zxxxzxxxzxxxxzxzzzzzxxzxxzxxxxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
