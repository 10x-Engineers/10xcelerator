class c_971_1;
    integer i = -160;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_971_1;
    c_971_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01xx10x0z100zzzx0z10xzx11x01110zxxxzxxzzzxxxxzxzzzzxxxxxzxxxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
