class c_1124_1;
    integer i = -186;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1124_1;
    c_1124_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xx110100zx0xxxzz00z0xx11xz111zzzxxzzzxzxxzxzzxxxxzzxzxzzzxzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
