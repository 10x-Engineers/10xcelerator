class c_2020_1;
    integer i = -335;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2020_1;
    c_2020_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxzzxzz1xzzx0101zzz0zz11zz110zx0zzzxxzzxzzxxxxzzzzxzzxzxzzzxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
