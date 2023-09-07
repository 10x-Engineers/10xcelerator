class c_2241_1;
    integer i = -372;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2241_1;
    c_2241_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x1xz00z10xzz0xxx00zx0xzzz0x0xzxzzzzxxxzxzzxxzzxxxzzxxzxzzxzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
