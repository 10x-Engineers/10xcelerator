class c_3196_1;
    integer i = -531;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3196_1;
    c_3196_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1000110z0xz1zx11x1x0xx00101x1x1xzzxzxzxzxxxxxxxzzzxzxzxzzzzzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
