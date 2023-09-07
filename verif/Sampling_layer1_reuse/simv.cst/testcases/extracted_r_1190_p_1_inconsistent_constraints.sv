class c_1190_1;
    integer i = -197;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1190_1;
    c_1190_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0010z1010x1zxx10x01xzz01x0xxzxzzzxzxxxxxxxzxzxzxzzzzzxzzzxxzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
