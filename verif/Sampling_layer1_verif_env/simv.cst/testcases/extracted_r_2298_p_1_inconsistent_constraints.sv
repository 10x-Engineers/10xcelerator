class c_2298_1;
    integer i = -381;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2298_1;
    c_2298_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x10xz00100z11xx011xzxx10zx1xz0x1zxxxzzxxxxxxzxxxxzxzzzzxxzxzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
