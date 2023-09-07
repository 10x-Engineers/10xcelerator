class c_1972_1;
    integer i = -327;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1972_1;
    c_1972_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x00x01x000xzz0x01zzx1x10xx1x0111xxxzzxxzxxzxzxzxxzzxzxzzxzxxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
