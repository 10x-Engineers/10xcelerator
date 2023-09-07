class c_1683_1;
    integer i = -279;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1683_1;
    c_1683_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "101xz01x1xx10z0xx1x0111x001z1x1zzxxzxxxzxzxzxxzzxxxzxzzxzxxxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
