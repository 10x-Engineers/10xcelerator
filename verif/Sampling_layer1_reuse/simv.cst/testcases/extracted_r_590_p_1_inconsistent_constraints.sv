class c_590_1;
    integer i = -97;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_590_1;
    c_590_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx01zz110x011x0xx01111001xz0xx0zzxxzxzzxzzxxzxzzxzxxzxxxzzxxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
