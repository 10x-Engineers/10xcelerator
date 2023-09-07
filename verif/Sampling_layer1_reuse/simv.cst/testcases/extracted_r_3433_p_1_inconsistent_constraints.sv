class c_3433_1;
    integer i = -571;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3433_1;
    c_3433_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x00001111xzzzxzz01xz1xzzzx110x1zxxzxxzzxxxxzzzxxxxxxxzzxzzzzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
