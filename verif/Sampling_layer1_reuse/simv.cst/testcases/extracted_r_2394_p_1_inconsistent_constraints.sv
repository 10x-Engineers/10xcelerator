class c_2394_1;
    integer i = -397;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2394_1;
    c_2394_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1zx001x0x0x10xz1z010101z0zx011xzxzxxzxzxxxxzzzzzxzxzxzxzzxxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
