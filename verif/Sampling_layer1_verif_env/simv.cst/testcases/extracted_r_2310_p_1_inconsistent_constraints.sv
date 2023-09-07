class c_2310_1;
    integer i = -383;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2310_1;
    c_2310_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x000x00010xx00101011zx00x00z1001zzzzzxzxxzzxxzxxzzxxxxxzzxxxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
