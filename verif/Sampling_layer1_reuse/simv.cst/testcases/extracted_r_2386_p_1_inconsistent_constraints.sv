class c_2386_1;
    integer i = -396;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2386_1;
    c_2386_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00zz100z000xz000x01x011zz010010zxxxxzzzxzxxxxxxzzzxzzzzzzxzzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
