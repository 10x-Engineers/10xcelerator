class c_3191_1;
    integer i = -530;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3191_1;
    c_3191_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x11z010x1xx100zx00zxx1zxzz1x100zzxzxzzzxxxxxxzzzzxzxzzzxzzxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
