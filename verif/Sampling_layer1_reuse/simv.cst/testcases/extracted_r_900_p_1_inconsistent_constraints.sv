class c_900_1;
    integer i = -148;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_900_1;
    c_900_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00xz0zz1zx1x00xzx1x01z0x00x0011zxxzxxxxxxxxzxxzzzzxzxxzzzzzzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
