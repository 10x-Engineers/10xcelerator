class c_243_1;
    integer i = -39;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_243_1;
    c_243_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x01zz01zz010z101zx00z0x1z01zx1x1zxzxzxxzxxzxzxxzxxzxxzzzxxxxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
