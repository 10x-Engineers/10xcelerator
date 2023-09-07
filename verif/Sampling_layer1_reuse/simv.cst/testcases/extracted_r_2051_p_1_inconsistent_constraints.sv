class c_2051_1;
    integer i = -340;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2051_1;
    c_2051_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zx0011xxz0zx0x1111x01x0xz0x0zz0xzxxzxxzxxxxzxzxzxxxzzxxzzxxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
