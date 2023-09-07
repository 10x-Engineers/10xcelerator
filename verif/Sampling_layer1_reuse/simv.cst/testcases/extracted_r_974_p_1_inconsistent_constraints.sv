class c_974_1;
    integer i = -161;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_974_1;
    c_974_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1z0000z01xzx0z1000xz0zzzxx1zzx0xxxzxzzxzxzxzzzzzxzzxzzxxxzzzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
