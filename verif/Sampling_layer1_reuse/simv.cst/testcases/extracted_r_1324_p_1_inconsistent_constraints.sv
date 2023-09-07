class c_1324_1;
    integer i = -219;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1324_1;
    c_1324_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zx01xz0x10100z1xxzz11xz110000xzzxxzxxzzxxxzxzzxzzxzzxxxxxxxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
