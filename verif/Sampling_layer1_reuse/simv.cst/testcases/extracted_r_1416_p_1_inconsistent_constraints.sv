class c_1416_1;
    integer i = -234;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1416_1;
    c_1416_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00xx0000zz10z10x111zxzx0z1z1x0zzzxxzxzxxzzzzzxxxxxzzzzzxxxxxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
