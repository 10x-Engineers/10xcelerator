class c_1751_1;
    integer i = -290;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1751_1;
    c_1751_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10xz1101z0xzx011xz0xxxzzzz11110xzzxxxxxxzxxzzxxzzzzxxzxzxxzxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram