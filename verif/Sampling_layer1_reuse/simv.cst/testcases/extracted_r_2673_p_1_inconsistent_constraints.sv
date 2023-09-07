class c_2673_1;
    integer i = -444;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2673_1;
    c_2673_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x010xz11x00xzxx0z01z0xz0xz111x0xxxxxxxxzxxxzzxxxxxxxzxxzxzxxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
