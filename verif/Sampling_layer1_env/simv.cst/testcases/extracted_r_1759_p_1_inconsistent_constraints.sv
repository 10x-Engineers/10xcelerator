class c_1759_1;
    integer i = -292;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1759_1;
    c_1759_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11xz0x01zz1000z1x11010zx0111z0zzxzzzxzzzzzzzxzxzzxxxzxzzzxxxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram