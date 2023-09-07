class c_2172_1;
    integer i = -360;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2172_1;
    c_2172_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xzxxxzxz0zxx0xxzzxz0000z000x10zxxzzxzzzzzzxzzzxzxzzxxxzxzzxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
