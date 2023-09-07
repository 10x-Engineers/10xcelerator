class c_2998_1;
    integer i = -498;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2998_1;
    c_2998_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10z01xzz1z100z101x0zxxz0x011111xxzzzxxzzzxxzzzxxzzzxzxzzxxxzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
