class c_1949_1;
    integer i = -323;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1949_1;
    c_1949_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz0x00110zxx00xx1z100x10xx00xz0zzzzxxzzxzzxzxxzxxxxzxzzzxzzxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
