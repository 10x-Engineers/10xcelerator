class c_2903_1;
    integer i = -482;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2903_1;
    c_2903_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zxxzzzz11110111xzx01xz10z1001xxxzxzzxxxxzxzzzzzzxxxzxxzzzxxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
