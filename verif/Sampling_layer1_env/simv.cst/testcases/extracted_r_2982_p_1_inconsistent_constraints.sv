class c_2982_1;
    integer i = -495;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2982_1;
    c_2982_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1z0zz0x0xzz01z101zz01xx110zx1zxxxzxzxxzxzzxzxxzxzxzxxzxxxzzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
