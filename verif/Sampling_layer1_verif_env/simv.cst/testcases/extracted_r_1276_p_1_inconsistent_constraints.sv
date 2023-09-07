class c_1276_1;
    integer i = -211;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1276_1;
    c_1276_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z0xxzz10xzx0z11z01z1x0z110x0zxxzxxxzzxzxzxzxxxxxxxxxxxzxxxxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
