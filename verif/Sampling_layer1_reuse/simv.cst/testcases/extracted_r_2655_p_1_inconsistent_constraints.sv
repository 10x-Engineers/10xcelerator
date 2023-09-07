class c_2655_1;
    integer i = -441;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2655_1;
    c_2655_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1z1z011z101x01x011xz0z1x1zz110zxxxxzxzzxzzzxzxzzxzzzxxzxxzxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
