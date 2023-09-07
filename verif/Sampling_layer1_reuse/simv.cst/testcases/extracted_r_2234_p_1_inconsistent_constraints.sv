class c_2234_1;
    integer i = -371;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2234_1;
    c_2234_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxz0xz1z001z000xzx01x1z1xz10xz01zxzxxxzzxzzzzzzxzzzxzxxxzzxzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
