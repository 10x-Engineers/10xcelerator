class c_651_1;
    integer i = -107;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_651_1;
    c_651_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z111010zz0z010zzzx100xz0xx011x0zxxxxzzzzzzzxxzzzxzxzxzxxzxzxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
