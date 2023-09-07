class c_1318_1;
    integer i = -218;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1318_1;
    c_1318_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x10x1x1z1x1x1xxzx11011zz1x1xz0x1zzxxxzxzxzxxzzxzxzxzxzzxxxxxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
