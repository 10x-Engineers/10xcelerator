class c_2024_1;
    integer i = -336;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2024_1;
    c_2024_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxxx0xxx000x0xxx0z0111z0x1z11xz0xxxzzxzxzzzxzxzzzxzxzzxxxzxxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
