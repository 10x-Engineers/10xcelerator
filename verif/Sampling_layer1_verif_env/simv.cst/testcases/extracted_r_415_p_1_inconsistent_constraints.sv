class c_415_1;
    integer i = -68;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_415_1;
    c_415_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx0zx1z000z1zx010xx1z1xzz010xz0xxzxxzxzzxxzzzxzxxzxzzxxzzxxxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram