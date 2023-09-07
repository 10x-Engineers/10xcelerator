class c_3281_1;
    integer i = -545;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3281_1;
    c_3281_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11zz01011xxz001z1x0xz0zz10z0110xxzxxzzxxzzzxxzzxzzxzzxzzxzxxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
