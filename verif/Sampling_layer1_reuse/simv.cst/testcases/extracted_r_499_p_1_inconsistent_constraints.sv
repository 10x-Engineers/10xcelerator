class c_499_1;
    integer i = -82;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_499_1;
    c_499_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z11x100zz00xx0zxzx0zzxzz0z1z001xxxxzxzxzxxxxzzzzzzzxzxxxzxzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
