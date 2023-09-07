class c_2893_1;
    integer i = -481;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2893_1;
    c_2893_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1x11110x010x0001z0011x11x1z101zzxzzxxxxxxzzzzzxzzzzzxxxzxzxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
