class c_2826_1;
    integer i = -469;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2826_1;
    c_2826_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzzx0z01010zx0zx1z11x0x11zx10xx1xxxzxzxzzzzzxzzzxxzxzzxzzzxzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
