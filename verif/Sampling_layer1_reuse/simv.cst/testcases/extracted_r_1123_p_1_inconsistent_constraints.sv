class c_1123_1;
    integer i = -186;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1123_1;
    c_1123_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zzzzz0x1110zxzz10000zxzzzzx1zx1zxxzxzxxzxxzxzxzzzzxzzzxxxzxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
