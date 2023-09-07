class c_1898_1;
    integer i = -315;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1898_1;
    c_1898_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz0zzz1z1x011xxz001xz01zzz1z11z1zxzxzzxxxxzxzxxxzxzxzzxzxxzxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
