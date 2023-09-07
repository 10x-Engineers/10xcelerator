class c_2839_1;
    integer i = -472;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2839_1;
    c_2839_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0000z0z11110z1zx000z0zz11zx00100zzzxxzzxzzxzxzzxxxzzzxxxzzzzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
