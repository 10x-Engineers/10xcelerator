class c_523_1;
    integer i = -86;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_523_1;
    c_523_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzx0z0xzz0x0zz10zx000xz1z0zx00zzxzxzxxxzxxxzxzzzzzzxzzxzxxzxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
