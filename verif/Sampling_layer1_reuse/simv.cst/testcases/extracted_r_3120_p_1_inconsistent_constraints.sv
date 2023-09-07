class c_3120_1;
    integer i = -518;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3120_1;
    c_3120_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z0xzzzxxx1zxxx01xzz0xx0zzxxxx1zxxzzxzxxzxxxxxxxxxzzzxzxzxzxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
