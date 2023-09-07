class c_2827_1;
    integer i = -470;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2827_1;
    c_2827_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx0z0010zzzx011xz1x00xxz10xx10x1xxzxzzzzzzxzzzxzxzxxzzxzxxzxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
