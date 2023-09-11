class c_2735_1;
    integer i = -454;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2735_1;
    c_2735_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x00010111z0z1z1xz0xz010zxxx10x1zzzxzzzxxzxzxzzxxzxxxzzzzxxzzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram