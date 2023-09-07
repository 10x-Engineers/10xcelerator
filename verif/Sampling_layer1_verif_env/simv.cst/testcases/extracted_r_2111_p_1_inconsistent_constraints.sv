class c_2111_1;
    integer i = -350;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2111_1;
    c_2111_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxzx1xzz1xzz110x01xx00zz00xx00xxxzzxzzxzzxxxzzzzzxxxzxzxxxzxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
