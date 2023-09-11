class c_2076_1;
    integer i = -344;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2076_1;
    c_2076_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x00x001zx11zx0xx1x0z000x0zx11x1zxxzzxxzxzxxxzzzxzzxxzxzzxxxxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
