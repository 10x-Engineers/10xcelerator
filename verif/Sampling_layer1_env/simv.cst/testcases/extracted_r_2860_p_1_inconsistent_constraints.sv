class c_2860_1;
    integer i = -475;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2860_1;
    c_2860_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xxx1z1zx1010z0z0z1x0x1x101110zzxxzxxxxzzzxxzxxzxxzxxzxxzxzxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
