class c_1947_1;
    integer i = -323;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1947_1;
    c_1947_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zx0xzzxzx0xx1zxzx1x0xxzx1xz1xx1xzxxxzxxxxxzzzzzxzzxxxxxzxxzzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
