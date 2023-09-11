class c_2875_1;
    integer i = -478;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2875_1;
    c_2875_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00z00xz0zzzzxxx1x1x1zzzzz0z1001zxzxxxzzzxxxzxxzxzzzzzxxxxxzxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
