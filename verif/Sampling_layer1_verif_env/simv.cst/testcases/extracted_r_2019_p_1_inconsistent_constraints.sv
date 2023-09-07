class c_2019_1;
    integer i = -335;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2019_1;
    c_2019_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x11x01x00x011zxzz0zz1010xz1x100xxxxxxzzxzxxxzxzxxzxxzzzxxxxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
