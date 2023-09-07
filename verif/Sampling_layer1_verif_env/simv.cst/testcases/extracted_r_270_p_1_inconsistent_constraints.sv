class c_270_1;
    integer i = -43;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_270_1;
    c_270_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10zx1101x01x0x11z1zx1z010zz1x0xzxzxzxzzzxxxzxzxxzzxzxzxxzzxzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
