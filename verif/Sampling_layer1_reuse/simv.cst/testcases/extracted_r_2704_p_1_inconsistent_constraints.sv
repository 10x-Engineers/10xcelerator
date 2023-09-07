class c_2704_1;
    integer i = -449;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2704_1;
    c_2704_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0xxzx00z1zx1x000zz1z1z11zz0zzx1xxxzzxzzzzzzzzxzzxzxzzxxxxzzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
