class c_604_1;
    integer i = -99;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_604_1;
    c_604_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx00xx1z0zzz0x1z10xzzz0zx1zxz110xzzxxzxxxxzxzzxxxxzxzzxzzzzzzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
