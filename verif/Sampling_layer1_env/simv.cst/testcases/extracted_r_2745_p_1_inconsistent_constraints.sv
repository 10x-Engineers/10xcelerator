class c_2745_1;
    integer i = -456;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2745_1;
    c_2745_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0z001x111x1100111000z1z1x10zxz0xxxxzxzzzzxxxzxzxzxxxzxzxxzxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
