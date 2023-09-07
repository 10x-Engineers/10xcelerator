class c_1412_1;
    integer i = -234;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1412_1;
    c_1412_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x0xx00zz0zx0zzzz1zz0z0xxxx1z011xxzzxxxzzxxzxxzxzzzxzzzzxxxxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
