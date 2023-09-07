class c_2658_1;
    integer i = -441;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2658_1;
    c_2658_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1x0zz1xzzx11xx1x11xzx0z00z1xxz1xzzzxzzxxzxzzxzxzzzzzxzzxxzzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
