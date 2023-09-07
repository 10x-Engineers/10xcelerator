class c_2328_1;
    integer i = -386;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2328_1;
    c_2328_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00z0z10zxxz0z0xx10xzzzx10zxzzxz0zzzxzxxxzzzxxzzzzxxxzxzxxzzxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
