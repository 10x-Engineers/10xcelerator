class c_2544_1;
    integer i = -422;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2544_1;
    c_2544_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx0z100x1010zxxzz1xx0x1xxxzxz110zzxzzzxxzzxzzxzzxzzzxzxxxzxzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
