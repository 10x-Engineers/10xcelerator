class c_1422_1;
    integer i = -235;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1422_1;
    c_1422_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x0xxx0001z1zxxx1011z1111110x000xxxxxxxzxxxzzxxxzxxzxxxxxzxxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
