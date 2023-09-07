class c_1382_1;
    integer i = -229;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1382_1;
    c_1382_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x01x10x0x1x0011zzzzxx11xx1zzz0x1zxzzxzxzxxxzzzxxxzzxzzzzzxxzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
