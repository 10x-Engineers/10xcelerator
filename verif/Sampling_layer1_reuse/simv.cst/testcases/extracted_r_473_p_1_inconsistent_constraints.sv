class c_473_1;
    integer i = -77;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_473_1;
    c_473_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0xz1z0z00xz1x0xx1101zz101011z01zxzzzxzxxzxzzxzxxzzzzzzzzzxxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
