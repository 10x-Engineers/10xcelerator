class c_842_1;
    integer i = -139;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_842_1;
    c_842_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x111x0zxzx0xxxx11zzz11z100zxx1zzzzzxzxzxxxzzzxxzzxzzzxzxxxxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
