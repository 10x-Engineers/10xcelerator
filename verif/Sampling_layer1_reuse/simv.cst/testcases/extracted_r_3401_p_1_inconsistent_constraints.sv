class c_3401_1;
    integer i = -565;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3401_1;
    c_3401_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0zzzx1z1z11xxzxzzxz0x1010xzx1zxzxzxzxxzzzxxzxxzxxxzxzxzxxzzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
