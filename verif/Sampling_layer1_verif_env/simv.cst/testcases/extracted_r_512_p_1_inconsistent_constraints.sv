class c_512_1;
    integer i = -84;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_512_1;
    c_512_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00000z00zzx1x1x1z1x01x0z100xzzxzxxxxxxzxzxxzxxxxzxzxxzzzxzxxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
