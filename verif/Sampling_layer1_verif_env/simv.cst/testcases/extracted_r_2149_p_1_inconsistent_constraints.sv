class c_2149_1;
    integer i = -357;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2149_1;
    c_2149_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxxzzzz101zzz01x1zz0z111zx11xz01xxxxzzzxzzxxxxxxzxxxzxxxzzxzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
