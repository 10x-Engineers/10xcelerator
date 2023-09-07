class c_2052_1;
    integer i = -340;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2052_1;
    c_2052_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xxx1xz0x0xx1zx11z1z1xxz1zx010xzzzxxxzzxzzzzxzzzzxxxzxxzzxzxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
