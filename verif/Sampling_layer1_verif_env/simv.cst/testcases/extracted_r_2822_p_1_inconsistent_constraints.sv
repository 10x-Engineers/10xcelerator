class c_2822_1;
    integer i = -469;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2822_1;
    c_2822_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01x0100z1x100z01zzx100x11zzx0x00zxxxxxxzzxxzzxxxzzzxxzzzxxxzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
