class c_1930_1;
    integer i = -320;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1930_1;
    c_1930_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxx11zxzzz01x0zzxz111x11x100xx10xzxxzxzzxxzzxzzzxxxxzzzzzxxxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
