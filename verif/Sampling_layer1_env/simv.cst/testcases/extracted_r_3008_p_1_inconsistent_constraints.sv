class c_3008_1;
    integer i = -500;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3008_1;
    c_3008_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z01z00xzz1z0xzx110x1xxzz0z0zz0x0zxzzxzzzzxxzxxzxzxxzzxzzxxzxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
