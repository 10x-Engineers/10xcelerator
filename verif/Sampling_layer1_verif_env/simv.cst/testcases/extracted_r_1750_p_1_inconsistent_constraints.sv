class c_1750_1;
    integer i = -290;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1750_1;
    c_1750_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01zxz1x101xz0zxzzz100z0x0z00z1zxzxxxzxzzxxzzxzxxzzxxzzzxzzxxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
