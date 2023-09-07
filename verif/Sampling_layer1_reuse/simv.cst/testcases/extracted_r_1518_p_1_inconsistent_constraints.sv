class c_1518_1;
    integer i = -251;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1518_1;
    c_1518_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zx111z01z101x0x0zxz0z1zz00100zxzzzxzxzzxzzzzxxzxzxxzzxxzzxzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
