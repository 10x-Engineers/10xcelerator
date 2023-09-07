class c_2848_1;
    integer i = -473;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2848_1;
    c_2848_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xzx1zxxx101x1z01z0z0zxxzxxxxz10xxzxxxzzxzxzzzxzzzzzxxxzzxzxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
