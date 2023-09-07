class c_1757_1;
    integer i = -291;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1757_1;
    c_1757_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "011xxxzx0x0x1zzz001z1xxzx0x0z0x1zzxxxxzxzzzzxzxxxzxxzzxzxzxzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
