class c_3444_1;
    integer i = -572;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3444_1;
    c_3444_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1x000zz1xzzx010xz0111x00zxzx0xxxxzzzzxzzxzzzzxxxxxxzxxxzxxxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
