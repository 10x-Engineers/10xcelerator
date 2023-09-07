class c_3341_1;
    integer i = -555;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3341_1;
    c_3341_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10x0z1zzx0111001zxx0xx1x11xz0x10xxxzzxxzxzzxzxxzxxzxxzzxxxxzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
