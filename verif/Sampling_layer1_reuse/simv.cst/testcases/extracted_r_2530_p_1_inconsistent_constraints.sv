class c_2530_1;
    integer i = -420;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2530_1;
    c_2530_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xz1zx0z1z0xxz11z01z1zxx00xz0zz1zxzxzzzzxzzxzxxzzxxzzzzxzzxxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
