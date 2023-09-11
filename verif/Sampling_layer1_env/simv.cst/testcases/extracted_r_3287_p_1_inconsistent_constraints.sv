class c_3287_1;
    integer i = -546;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3287_1;
    c_3287_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01z00zzz1zx100z101x10x0z00x0000zxzzzxzzxxxxzxzxxxzxzxzzxxzzzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
