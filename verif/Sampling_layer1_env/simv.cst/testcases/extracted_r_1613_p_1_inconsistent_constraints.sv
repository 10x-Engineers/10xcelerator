class c_1613_1;
    integer i = -267;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1613_1;
    c_1613_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzz0xxxz1zz00x10010xx0xxzzzz10zxzxzzzxxxzxxxxzzxzxzxzxxzzxzzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
