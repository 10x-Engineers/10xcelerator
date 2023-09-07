class c_2029_1;
    integer i = -337;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2029_1;
    c_2029_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1zz0xxxxx1001z001xxzxz000xxz0xzzzxxzxzzxzxxzzzzxzzxxzzxxxxzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
