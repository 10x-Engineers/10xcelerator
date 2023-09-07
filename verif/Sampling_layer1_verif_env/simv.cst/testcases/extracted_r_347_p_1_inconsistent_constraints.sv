class c_347_1;
    integer i = -56;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_347_1;
    c_347_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xx1z0z011zzx0z101z00xx101zx1xz0xxzxzzxzxzzxzzxzzxzzxzzxzxxxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
