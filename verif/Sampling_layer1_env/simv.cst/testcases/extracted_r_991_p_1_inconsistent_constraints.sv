class c_991_1;
    integer i = -164;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_991_1;
    c_991_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1101x1xx00zzxz0zx000111z10z0x1z0xxxxxxzxxxzzzxxxzxzzxzxxxzxzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
