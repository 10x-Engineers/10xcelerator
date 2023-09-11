class c_85_1;
    integer i = -13;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_85_1;
    c_85_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00z1100z1xx00zz0zz1zxxzz011x1x10xzxzxxzzzxzxzxzzzzxxzzzxxxxzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
