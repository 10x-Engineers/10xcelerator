class c_1524_1;
    integer i = -252;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1524_1;
    c_1524_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx1x1100x01zzx0z100zzx0z1x1xz001zzxzzxxzxzxxxzxxxxzzzzzxxxzzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
