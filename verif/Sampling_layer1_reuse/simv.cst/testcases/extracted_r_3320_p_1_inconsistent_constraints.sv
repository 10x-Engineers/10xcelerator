class c_3320_1;
    integer i = -552;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3320_1;
    c_3320_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x10x00zzz1x1xz11zxx1z0x00xxz0001xxzxzzxxxxzzxzxzzzzxxzxzzxxzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
