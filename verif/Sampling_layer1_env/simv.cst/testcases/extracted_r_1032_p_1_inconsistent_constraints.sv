class c_1032_1;
    integer i = -170;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1032_1;
    c_1032_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z0z0zz010z00x0xx10zxz11x0x1z110xzzxzzzxzzxxzzzzzxxxzxxxzzzzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
