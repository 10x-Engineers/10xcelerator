class c_3209_1;
    integer i = -533;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3209_1;
    c_3209_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10zzz0000z1xx1zzxz1x0xzxx0zzxzz1zzxxzxzzxxxzzzxxxzzzxxzzzxzxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
