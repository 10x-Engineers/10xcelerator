class c_53_1;
    integer i = -7;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_53_1;
    c_53_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zxxxz101101x0z1z00zxz1zzxzxzz01zzxzzzzxxxzxxzxxxxzxzzzzxxzzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
