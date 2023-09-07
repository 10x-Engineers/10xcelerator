class c_2663_1;
    integer i = -442;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2663_1;
    c_2663_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00xz0x0zxx0010x10xz01x0x10xz0x10xxzxzxzxzzxxxxxzzzzzxxxxxxzzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
