class c_3197_1;
    integer i = -531;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3197_1;
    c_3197_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0111011x101zxz00zxzz1xxx1000z1xzzxzxzzzzxzzxxxzzxzzzzzxxxzzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
