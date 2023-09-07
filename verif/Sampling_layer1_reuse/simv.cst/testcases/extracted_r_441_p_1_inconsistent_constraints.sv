class c_441_1;
    integer i = -72;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_441_1;
    c_441_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z00z1x10zx1zx110x00010111z00zzzzzzzzzxxxxzxzzzzxzzxzxxzzzxxxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
