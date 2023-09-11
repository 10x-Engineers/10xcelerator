class c_546_1;
    integer i = -89;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_546_1;
    c_546_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1010xzx0zz1z1011zxzzzzxzz010x1x1xzxxxxzxxxzxxzzzxzxxxzxxzzzxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
