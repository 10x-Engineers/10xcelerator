class c_358_1;
    integer i = -58;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_358_1;
    c_358_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1010110xz110x101xzz0x1x111zxzzzzzzxxxxzzzxxxzxzzzxzxxxxzzzzzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
