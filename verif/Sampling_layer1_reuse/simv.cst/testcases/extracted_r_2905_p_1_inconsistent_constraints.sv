class c_2905_1;
    integer i = -483;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2905_1;
    c_2905_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x00xz110zx1x1x00zzzz1zxzxxxzz1z1zxxxxzxzzxzxzxxxzxzzxzzzxxzxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
