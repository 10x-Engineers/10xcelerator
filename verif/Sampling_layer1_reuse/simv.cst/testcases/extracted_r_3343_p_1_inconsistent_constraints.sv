class c_3343_1;
    integer i = -556;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3343_1;
    c_3343_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzx11zzzzzzzxzx1zx10x011x10z00xxzxzzxxzzzxxxzxxxxxzzzxxzxxzxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
