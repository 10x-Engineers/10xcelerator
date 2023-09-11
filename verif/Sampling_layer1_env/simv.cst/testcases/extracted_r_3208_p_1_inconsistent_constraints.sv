class c_3208_1;
    integer i = -533;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3208_1;
    c_3208_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1x0110xxz0z1z01zxz000zzzxzz011zzxzzxzzxxxxxzzzzxxxxzzxzzzzzzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
