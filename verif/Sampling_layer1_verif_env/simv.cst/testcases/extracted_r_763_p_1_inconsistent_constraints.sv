class c_763_1;
    integer i = -126;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_763_1;
    c_763_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx1x0xzxzz00zzz0x1010xx0z1110zzxzzzzxzxzzzzxxxxzzxxxzxzzzxzxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
