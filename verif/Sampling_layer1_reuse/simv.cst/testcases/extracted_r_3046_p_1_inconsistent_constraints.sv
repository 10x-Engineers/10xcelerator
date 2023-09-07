class c_3046_1;
    integer i = -506;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3046_1;
    c_3046_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xx00xzx111zzx1x1xx1z0xxz1xzxz11xxxxxzzxzzxzzzxxxxxxxxxxxzzzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
