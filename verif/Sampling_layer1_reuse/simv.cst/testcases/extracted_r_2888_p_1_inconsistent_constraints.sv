class c_2888_1;
    integer i = -480;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2888_1;
    c_2888_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10z01xxxx0000z1xxx111zz1z010x1zxzzxxxxxzxzxzzzzxzzxzxzxxzzxxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
