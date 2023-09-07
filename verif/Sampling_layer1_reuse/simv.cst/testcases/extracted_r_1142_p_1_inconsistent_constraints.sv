class c_1142_1;
    integer i = -189;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1142_1;
    c_1142_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx001100zxz10x0xx0xxzz1010x11zxxzzzzzxxzzzxzxxzzxxzxxzxxxzzzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
