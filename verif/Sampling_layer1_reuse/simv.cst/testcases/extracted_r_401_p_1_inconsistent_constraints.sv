class c_401_1;
    integer i = -65;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_401_1;
    c_401_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx00zxz1x10xzxz1xzx0100011110zxzxzxzzzxxxxxxzzxzxxzxzxzxxzzzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
