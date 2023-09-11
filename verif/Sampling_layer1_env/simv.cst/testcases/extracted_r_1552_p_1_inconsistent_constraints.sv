class c_1552_1;
    integer i = -257;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1552_1;
    c_1552_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxz01zzx1x1z0xxz000z0x001010xz01zxxxxxxzzzxxzxxzzzxxzzxxzxxzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
