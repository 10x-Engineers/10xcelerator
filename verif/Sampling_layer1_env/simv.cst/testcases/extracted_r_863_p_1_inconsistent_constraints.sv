class c_863_1;
    integer i = -142;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_863_1;
    c_863_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz00z0zzxx0xz011000z1zx0110xz010xzzzxxxzxxzzzzxzxzxzzzzzzzzzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
