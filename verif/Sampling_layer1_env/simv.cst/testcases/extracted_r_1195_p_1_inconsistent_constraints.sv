class c_1195_1;
    integer i = -198;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1195_1;
    c_1195_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1z111x0zxzz1x0x001z1x0xz0xxx0xzxzxxzzxxxxzxzxzxzxxxzzzxzzzzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
