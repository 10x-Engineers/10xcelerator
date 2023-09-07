class c_3397_1;
    integer i = -565;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3397_1;
    c_3397_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x100x011111xz11z1zxxxxzzz1000x0zzzxxzxxzxzzzzzxxxxxzzxzxxzxxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
