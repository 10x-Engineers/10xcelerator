class c_3393_1;
    integer i = -564;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3393_1;
    c_3393_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11z01x0z1100zz1zzxzx1110000x1x11zzxxzzxzzxzxxxzxxxxxxzxzxzzzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
