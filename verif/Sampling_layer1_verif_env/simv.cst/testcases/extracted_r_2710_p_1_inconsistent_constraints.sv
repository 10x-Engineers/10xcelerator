class c_2710_1;
    integer i = -450;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2710_1;
    c_2710_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxzx1z010x0x110z1x10z0111z01zx11xzzxzzzzzxxxxzxxxxzxzzxxzxxxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
