class c_3157_1;
    integer i = -525;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3157_1;
    c_3157_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00x1xxz0z0x10111x0x00x0zx0xx0x01xzxxzzzzzxzxxzxzzzzzxxzzxzzzzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
