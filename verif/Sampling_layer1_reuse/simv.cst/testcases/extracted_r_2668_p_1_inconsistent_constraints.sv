class c_2668_1;
    integer i = -443;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2668_1;
    c_2668_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzx00zx10x1z1x1x0z0zz1x11z100xx0xzxxzxxzxzzxxxxzxzzxxzzxzzxxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram