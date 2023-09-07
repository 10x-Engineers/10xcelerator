class c_166_1;
    integer i = -26;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_166_1;
    c_166_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz1xz10xxx000z0xzx100z0x1xzxz001zxxxxzzzzzxzzxxxzxzxzzxxxxzxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
