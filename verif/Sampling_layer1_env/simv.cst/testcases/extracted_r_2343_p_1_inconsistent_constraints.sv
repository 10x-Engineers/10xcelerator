class c_2343_1;
    integer i = -389;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2343_1;
    c_2343_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1xxx1x000xzxxzzzxzx001x1z1z101zxzxxxxzxxxzxxzzxzzzzxzzxzxzzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
