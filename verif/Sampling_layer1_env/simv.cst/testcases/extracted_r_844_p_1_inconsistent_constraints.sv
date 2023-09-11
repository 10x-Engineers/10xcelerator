class c_844_1;
    integer i = -139;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_844_1;
    c_844_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "100x0z0000z1zzzxxzxzz11xz010x1z0xxxzxxxzxxzxzzxxxxzzzxxzzzxzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
