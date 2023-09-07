class c_2885_1;
    integer i = -479;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2885_1;
    c_2885_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11zzxx0xz1x0xz010x0z1zz1xxx0000zxzxzxzzzxzxxxzzzxzzzxzzxxxzxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
