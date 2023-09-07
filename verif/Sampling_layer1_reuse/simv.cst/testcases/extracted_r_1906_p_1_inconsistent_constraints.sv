class c_1906_1;
    integer i = -316;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1906_1;
    c_1906_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00zzz00zx001x1zzx1110x011zz1z0xzzxxzxxzzxzzxzzxzxzzzxzzxxzzzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
