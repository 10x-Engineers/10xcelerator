class c_692_1;
    integer i = -114;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_692_1;
    c_692_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz0x01xxzz11x00xxzxzz00zz01z01z1xzxzxxzxzxzzxxzzzxxxzzxzxzxxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
