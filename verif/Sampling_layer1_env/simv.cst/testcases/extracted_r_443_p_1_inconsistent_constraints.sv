class c_443_1;
    integer i = -72;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_443_1;
    c_443_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0010xxzxx1xz0111xx1x1101xzzx0z0xzxxxzxxxzzxxzzzzxxzxzzzzxxzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
