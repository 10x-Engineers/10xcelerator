class c_3385_1;
    integer i = -563;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3385_1;
    c_3385_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzx001z1x001x100x0zxz0z010zx00zzxxzzxzzxxxxxzzzzzxzzxxzxzxxxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
