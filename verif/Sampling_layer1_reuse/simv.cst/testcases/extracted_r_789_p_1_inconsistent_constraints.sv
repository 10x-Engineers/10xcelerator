class c_789_1;
    integer i = -130;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_789_1;
    c_789_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zxxxzz0x1z1zxx101000100z1x001xxzxzxzzxxzzxzxxxxxzxzxzxxxxzzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
