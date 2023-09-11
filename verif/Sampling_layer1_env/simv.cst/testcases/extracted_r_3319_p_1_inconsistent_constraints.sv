class c_3319_1;
    integer i = -552;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3319_1;
    c_3319_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx0z1x1z110z111x0zxz101xzzx0zz0zzzzzzxxxxxzzzxxxxxxxzzxzzxxxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
