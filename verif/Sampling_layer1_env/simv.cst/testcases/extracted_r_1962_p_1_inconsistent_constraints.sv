class c_1962_1;
    integer i = -325;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1962_1;
    c_1962_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz1z0xz110z00zz1z1z0zx1x10x1zx0zzxzzzzxxzxzzxzxzxzxxxzxxzzxxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
