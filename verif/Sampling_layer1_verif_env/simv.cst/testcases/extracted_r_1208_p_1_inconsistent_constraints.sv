class c_1208_1;
    integer i = -200;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1208_1;
    c_1208_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xxzzz0xx11101000x0z1x11110x1xz1xxzzxxzzxzxzxxzzxzxxxzzxzxzzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
