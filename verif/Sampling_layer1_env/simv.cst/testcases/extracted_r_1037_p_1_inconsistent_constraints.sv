class c_1037_1;
    integer i = -171;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1037_1;
    c_1037_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "110zxz0xz1xxzz1001zxzxxz1z0x1x1xzzxzxxxxzxxxzxzxxzxzzzzzxzzxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
