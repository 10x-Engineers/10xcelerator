class c_1567_1;
    integer i = -260;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1567_1;
    c_1567_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z01zx101x0100z0x1z0x011z11x0xxxxzzzxxxxxxzzxxxzxzzzzxxxxxxxzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
