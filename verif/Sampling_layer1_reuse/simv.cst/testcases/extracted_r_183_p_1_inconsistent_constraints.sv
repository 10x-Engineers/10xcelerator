class c_183_1;
    integer i = -29;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_183_1;
    c_183_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01111x1x1010zx1x01000x10xx10x0x0zzzzzzzxxzxxxxzxzxxzzxzxzxzzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
