class c_1800_1;
    integer i = -298;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1800_1;
    c_1800_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zz1zxzx1001zx0x1x01x10zz001x01zxxxzxzxxxzxzzxzxxzzxzzxxxxxzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram