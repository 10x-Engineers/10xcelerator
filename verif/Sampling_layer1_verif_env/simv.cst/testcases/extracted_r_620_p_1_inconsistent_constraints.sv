class c_620_1;
    integer i = -102;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_620_1;
    c_620_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xz1xz000zz1111z1zzz0xzzz100z10xzxzxzxxxzxxzzxzxzzzzxxxzxzzxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
