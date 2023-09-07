class c_919_1;
    integer i = -152;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_919_1;
    c_919_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x10xzx01z1zxx111xz0zxxzx1x100z0xxxxxxzxzzxzzzzxxxzxxxzzxxxxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
