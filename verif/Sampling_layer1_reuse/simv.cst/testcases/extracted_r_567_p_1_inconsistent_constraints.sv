class c_567_1;
    integer i = -93;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_567_1;
    c_567_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x01zz11x0x1xz0zx01x011z1011x010xzzzzzxzzzxzxxzxxzxzzxxxxzxxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
