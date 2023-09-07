class c_750_1;
    integer i = -123;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_750_1;
    c_750_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x0xx0z1x1111xxx00x1zzz1zzz001z1xzzzxxzxxxxxzxxxzzzxzxzzzzxxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
