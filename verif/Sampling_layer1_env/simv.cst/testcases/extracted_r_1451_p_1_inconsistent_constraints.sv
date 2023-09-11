class c_1451_1;
    integer i = -240;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1451_1;
    c_1451_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxxzxx0x10zz1100x11zxx00z0z1zx00zxxzxxxzzxzzzxzzzzxzzzzxzxxzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
