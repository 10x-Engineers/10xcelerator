class c_1725_1;
    integer i = -286;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1725_1;
    c_1725_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10010xx11z0z101z0001xzxzz01x1x1zxxzzxzzzxzzxxxxzxxxzzzzxxzxxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
