class c_2018_1;
    integer i = -335;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2018_1;
    c_2018_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xzzz01zzxxx00001x0zzzxxx1z101xzxzxxxzzzxzxxxxxxzzxzxzxzzzzzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
