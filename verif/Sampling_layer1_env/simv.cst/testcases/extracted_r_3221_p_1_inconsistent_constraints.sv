class c_3221_1;
    integer i = -535;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3221_1;
    c_3221_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z1zxzzz11zzxzz0x0x1x1101zxx1xzxxzzxxxxzxzxzxxxxzxzzzxxzzzzxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
