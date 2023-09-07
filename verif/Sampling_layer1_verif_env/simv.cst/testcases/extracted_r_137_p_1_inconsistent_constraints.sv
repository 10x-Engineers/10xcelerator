class c_137_1;
    integer i = -21;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_137_1;
    c_137_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10zx0x0x0zx0000xzzz00zz10x1zzxz1zzxzzxzzzzzzxzxxzxzzzxzzzzzxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
