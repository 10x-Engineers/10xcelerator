class c_679_1;
    integer i = -112;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_679_1;
    c_679_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z11101zzzzxx0x10xz0zxx1x11z0xxxxxxzzxzzxxzzxxzzzxxxzxzxzzzxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
