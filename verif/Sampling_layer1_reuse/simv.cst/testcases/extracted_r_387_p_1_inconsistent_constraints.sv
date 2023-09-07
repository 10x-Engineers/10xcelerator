class c_387_1;
    integer i = -63;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_387_1;
    c_387_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxz01101xx10x011001001xxx1011xx1zxzzzzzzzxzxzxzxxzzzzxxzzzxxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
