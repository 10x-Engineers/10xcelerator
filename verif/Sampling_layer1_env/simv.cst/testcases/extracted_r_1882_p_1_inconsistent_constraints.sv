class c_1882_1;
    integer i = -312;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1882_1;
    c_1882_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z1z0101zz11x1zz110xx1zzzxxzxx1xzxzzzzxxzxzzzxzzzzxxzzzxxxzzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
