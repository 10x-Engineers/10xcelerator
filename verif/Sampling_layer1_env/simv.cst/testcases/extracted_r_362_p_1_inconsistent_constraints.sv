class c_362_1;
    integer i = -59;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_362_1;
    c_362_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz10xzz0001x0xxxz0z0z100zzzx10z1zzxzzzzxzzxxxxxxzxxzzxzxxxzxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
