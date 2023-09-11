class c_2464_1;
    integer i = -409;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2464_1;
    c_2464_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11zx110zx1010x0x1x11010zzzxzxzz0xzzxxxxzxzzxxzxxxzxzxxzxxzzzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
