class c_1205_1;
    integer i = -199;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1205_1;
    c_1205_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10x1x11000zx1z110z01z1zxzzzxxzz0zxzzxzzxxzzzxxxzzzzzzzzxzzzzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
