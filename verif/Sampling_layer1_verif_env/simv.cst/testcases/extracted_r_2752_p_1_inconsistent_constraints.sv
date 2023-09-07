class c_2752_1;
    integer i = -457;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2752_1;
    c_2752_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z10z1xz0x1xz0z1z0z101xxx110x1111xxzzzxxxxzzxzxzzxzzxzzzxzzzzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
