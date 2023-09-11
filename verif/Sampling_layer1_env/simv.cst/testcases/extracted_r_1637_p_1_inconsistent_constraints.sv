class c_1637_1;
    integer i = -271;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1637_1;
    c_1637_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zzz11z0xz1z0zz01z01zx0xz0z1x01xxxxxxxzxxxzxzzzzzzzxxzxzxxzxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
