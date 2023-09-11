class c_2121_1;
    integer i = -352;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2121_1;
    c_2121_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z00x1x1001001z001zxz010xxxxzx1z0xxxzzxzxzzzxxxxxzzzzzzxxzzxzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
