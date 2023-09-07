class c_1435_1;
    integer i = -238;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1435_1;
    c_1435_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z00z1zzz0xz0z100z000xzzx1zx1zxxzxxzzxxxzxzxxzxzzzxxxzxxxzzxxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
