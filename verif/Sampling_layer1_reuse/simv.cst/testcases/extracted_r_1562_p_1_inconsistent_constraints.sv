class c_1562_1;
    integer i = -259;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1562_1;
    c_1562_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzx1x1xz1111zxx0x0001x101xz11zz0xzzzxxzzzzzzxxzzxzzxzxzzxxxxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
