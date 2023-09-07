class c_115_1;
    integer i = -18;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_115_1;
    c_115_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "000x111100x0z1xz0x1101001001z0x1xxxxxxxzzxxxxxxxzxzzxzxzxzzzzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
