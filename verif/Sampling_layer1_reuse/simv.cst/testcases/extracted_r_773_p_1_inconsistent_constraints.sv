class c_773_1;
    integer i = -127;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_773_1;
    c_773_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxxz10110x1z01z0zx0xzzxz11z00xx0zzxxzxxxxxxzzzxxxxxzxzxxxzxzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
