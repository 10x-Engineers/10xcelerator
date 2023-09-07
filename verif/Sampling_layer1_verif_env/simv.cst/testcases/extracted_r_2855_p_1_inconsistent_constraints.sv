class c_2855_1;
    integer i = -474;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2855_1;
    c_2855_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x011x1x00zzxzzz0z1xz01111xxz0111zzxzxxzzzxxxxxxzzxzzxzxxxxxxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
