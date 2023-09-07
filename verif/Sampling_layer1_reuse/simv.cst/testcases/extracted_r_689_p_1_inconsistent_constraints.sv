class c_689_1;
    integer i = -113;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_689_1;
    c_689_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0zx111x000010xzzx0xx10zzxx0zxz1xzzzxxxxxxzzxxzzxzzzxzxxzxzzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
