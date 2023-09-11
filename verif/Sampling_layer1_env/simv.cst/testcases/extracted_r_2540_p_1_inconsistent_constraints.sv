class c_2540_1;
    integer i = -422;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2540_1;
    c_2540_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01000xx0xx0xx0011z010z11z010z0z0xxxxzxzzzzxzxxxzxxzxxzxzzzxxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
