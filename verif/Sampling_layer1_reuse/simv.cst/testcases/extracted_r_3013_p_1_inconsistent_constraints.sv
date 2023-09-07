class c_3013_1;
    integer i = -501;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3013_1;
    c_3013_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz001x0xx1xxxxx0xzzzz1z1z1z01zzxxxxxxzzxxzzzxxzzzzzzzzxzxzzxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
