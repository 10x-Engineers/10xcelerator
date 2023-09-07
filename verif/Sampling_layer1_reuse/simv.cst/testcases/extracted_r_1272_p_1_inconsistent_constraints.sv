class c_1272_1;
    integer i = -210;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1272_1;
    c_1272_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "111110110x0xxx01xxzxzx0010xx1z0zzzxzxxxxxxzxzxxzzxzzzzzxzzzzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
