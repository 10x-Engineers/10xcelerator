class c_787_1;
    integer i = -130;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_787_1;
    c_787_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxx1xz1xxx1001x00zz01zzx1xz00xx1zzzzxzxzxzxxzxzzzxzzzxzxxxxzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
