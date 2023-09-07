class c_2039_1;
    integer i = -338;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2039_1;
    c_2039_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10xxzzzz11001z1z000xzx11xz11x1zzzzxxzxxzxxzzxzxzxxzxxxzxzzxzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
