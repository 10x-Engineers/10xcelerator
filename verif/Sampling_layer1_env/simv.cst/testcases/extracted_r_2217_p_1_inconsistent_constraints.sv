class c_2217_1;
    integer i = -368;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2217_1;
    c_2217_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx0z111xz1z1z100011x110zxx1x10x1zzzzxxxzxxzxzzzzzxzzxzzzxxxxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
