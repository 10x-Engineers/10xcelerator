class c_2220_1;
    integer i = -368;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2220_1;
    c_2220_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1001zz1010x11zzz0110x00xz1z1001xzxxzxxxzxxzzzxzxzxzzzxxzzxzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
