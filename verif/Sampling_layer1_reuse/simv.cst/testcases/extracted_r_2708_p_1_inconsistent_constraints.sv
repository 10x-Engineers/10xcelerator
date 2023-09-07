class c_2708_1;
    integer i = -450;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2708_1;
    c_2708_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01x011xxxxx1010x101xxzx1101xzzz0xxxzzxzxzxxxxzzxxzzzzzxzxzzzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
