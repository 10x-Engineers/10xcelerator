class c_61_1;
    integer i = -9;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_61_1;
    c_61_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00zz00xxxxxx00xx1xxzxzz1zxx1111xzxzzxzzzxzxxxxzxzzzxxzzzxzxxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
