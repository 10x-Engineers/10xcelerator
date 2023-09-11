class c_2106_1;
    integer i = -349;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2106_1;
    c_2106_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00110x00z0z1x0zzz1zzx0000x0xxzzzzzxxxxzzxzzxzxzxzxxxxxzzzxxzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
