class c_2535_1;
    integer i = -421;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2535_1;
    c_2535_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z00011zzz01111x1z01x1z100zz1zzxzzzxxxzxzxxzzxzzzxzxzxzzxzxxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
