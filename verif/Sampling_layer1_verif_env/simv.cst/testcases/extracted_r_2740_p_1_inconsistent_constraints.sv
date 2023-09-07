class c_2740_1;
    integer i = -455;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2740_1;
    c_2740_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1z00111zz001z0x110100zxz1xz000zxxzxxxzxzxzzxxzxxxzxzxxzzxzzzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
