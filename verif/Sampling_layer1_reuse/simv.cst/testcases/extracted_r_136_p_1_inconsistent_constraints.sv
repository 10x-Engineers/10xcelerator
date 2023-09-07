class c_136_1;
    integer i = -21;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_136_1;
    c_136_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1x0xz00x00100z00x0010xx0xxx000zzzxzxzxzzzzxxxxzzzzxxxxzzzxzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
