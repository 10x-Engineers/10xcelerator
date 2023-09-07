class c_3367_1;
    integer i = -560;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3367_1;
    c_3367_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00x0xzx0x10xx1x00100zxz1zxzx1z01xxzxxzxzzxzzxxzxzxxxxzxzxzxzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
