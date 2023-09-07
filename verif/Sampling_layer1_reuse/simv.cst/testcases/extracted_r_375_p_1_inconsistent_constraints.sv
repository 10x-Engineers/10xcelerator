class c_375_1;
    integer i = -61;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_375_1;
    c_375_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx0x011zxx00011z1zz10111x1z0zx0xxxzxzzxxzxxzxzxzxzzzxzxxzzxxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
