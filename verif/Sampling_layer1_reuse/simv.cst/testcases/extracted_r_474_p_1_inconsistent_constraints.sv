class c_474_1;
    integer i = -77;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_474_1;
    c_474_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzz111001xzx01100z1xz100zzxx01xxzzzzxzxxzxzxxzxxzzxzzzzzzzzxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
