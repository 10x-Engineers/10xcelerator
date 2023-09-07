class c_1919_1;
    integer i = -318;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1919_1;
    c_1919_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z001xx0x0000z001111x100x00x1zxxzzzxzxzxxzxzxxxzxxxxzxxxxxxxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
