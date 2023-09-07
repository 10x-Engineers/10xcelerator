class c_2563_1;
    integer i = -426;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2563_1;
    c_2563_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "111x01x0xz0xz1xzz0zzz01zx01xxzzzxxxxzzzzxxzzxxzxzxzxxxzzzzxxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
