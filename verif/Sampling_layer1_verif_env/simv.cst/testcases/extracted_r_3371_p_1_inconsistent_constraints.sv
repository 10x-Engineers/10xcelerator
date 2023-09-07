class c_3371_1;
    integer i = -560;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3371_1;
    c_3371_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z100zz1zxz011101zzxz11z00x10xzzxxxxzzxxzzzxxzxxxzzzzzxxzxzxzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
