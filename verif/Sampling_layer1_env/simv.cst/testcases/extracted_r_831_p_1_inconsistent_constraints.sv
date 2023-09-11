class c_831_1;
    integer i = -137;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_831_1;
    c_831_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "001zz11x1x01xx10x100x1zxx0zzzzxzxzxxzxzxxxzxxzzzxzzzzxzzxxzzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
