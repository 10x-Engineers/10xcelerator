class c_884_1;
    integer i = -146;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_884_1;
    c_884_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11xx011xxx10xx00110x1zz00z1x1z00zzzxxzzzzxxxxxxzxzxzxxzxxxxzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
