class c_1271_1;
    integer i = -210;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1271_1;
    c_1271_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01101xzxx1001x11x0zxz00zzx10x0x1zxxzxxzxxzzzxxzxzzxxxxzxzzzxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
