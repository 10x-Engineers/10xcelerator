class c_1703_1;
    integer i = -282;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1703_1;
    c_1703_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzxxxzxxzxzx1xxz100xx0011z1x11zzxzzxxxzxxxzzzxzzxzxxzxxzxxxzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
