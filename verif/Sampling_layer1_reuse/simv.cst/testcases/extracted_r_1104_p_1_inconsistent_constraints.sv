class c_1104_1;
    integer i = -182;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1104_1;
    c_1104_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0xx00x1zzz1zzxzzx00x00110zx100zzzzzxzxxzzzzxzzxxzxxzzxxxxxzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
