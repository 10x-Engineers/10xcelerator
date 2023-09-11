class c_1106_1;
    integer i = -183;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1106_1;
    c_1106_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xz1z0xx10xz0z0101xz1z011xzxxx10zxxxxzzzzxxxxzxzxxzxzxzxzxzzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
