class c_3011_1;
    integer i = -500;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3011_1;
    c_3011_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxxz11x11101x1xx0101z00zx0zz01xzxxzzzzxxzxzxxzxxxzxxxzxxxxxzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
