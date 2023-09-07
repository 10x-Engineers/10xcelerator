class c_1538_1;
    integer i = -255;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1538_1;
    c_1538_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "001z01x110zxx001z011101x1101x0z1xzzxzxxzzxxzxzxxxzzzxzzxzxxzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
