class c_2513_1;
    integer i = -417;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2513_1;
    c_2513_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0100xz01zzzzzx01x100z11xxzx10010zzzzzzzxxzzzzxzzxzzzxzxzzzzxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
