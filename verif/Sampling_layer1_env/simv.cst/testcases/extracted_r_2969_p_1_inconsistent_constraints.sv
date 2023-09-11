class c_2969_1;
    integer i = -493;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2969_1;
    c_2969_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00001z010xx0101zz00110zxz0z10010xzzzzzxzzxxxzzzzxzzzxxzzxzzxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
