class c_2587_1;
    integer i = -430;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2587_1;
    c_2587_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzz011zzxzx11z00z1zxz1z1zx10zx00zzxxxzzzxxxxzzxzzxxxxzxxzxxxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
