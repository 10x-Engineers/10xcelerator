class c_1365_1;
    integer i = -226;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1365_1;
    c_1365_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzz1zz01xzzzxxz1xz10zzz1xzx10xx1xxxzzzzxzzxxxxzxxxxzxzzxxzzzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
