class c_126_1;
    integer i = -19;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_126_1;
    c_126_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz00zxx0xx10z000zz0011x1z01x11x1xxzzzzzxzzzzxzzzzzxxzzzzxzxzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram