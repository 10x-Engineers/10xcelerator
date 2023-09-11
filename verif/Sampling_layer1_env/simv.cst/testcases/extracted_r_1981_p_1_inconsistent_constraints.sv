class c_1981_1;
    integer i = -329;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1981_1;
    c_1981_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x11zzx1x01x01xx0x10x0zzxzz101z1xxxxxxzzxxxxzzzxxxxzxzzxzzxzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
