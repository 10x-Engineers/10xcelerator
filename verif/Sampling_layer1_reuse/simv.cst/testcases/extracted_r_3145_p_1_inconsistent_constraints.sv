class c_3145_1;
    integer i = -523;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3145_1;
    c_3145_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zx1z100x0x0001z1x100xx10x00x01zxxxzxxzzxzxxzzzxxzzxxzxxzzxzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
