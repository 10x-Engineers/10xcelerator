class c_1941_1;
    integer i = -322;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1941_1;
    c_1941_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0001z111xzzz1xxx01000z0zz0100101zxzxxxzzzzzxzxxzzxxzxzzzzxzxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
