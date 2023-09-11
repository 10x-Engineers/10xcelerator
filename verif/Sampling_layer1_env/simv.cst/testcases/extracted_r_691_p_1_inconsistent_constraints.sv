class c_691_1;
    integer i = -114;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_691_1;
    c_691_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z11z1zxz10x1z110x011z1z0zx01xxzxxxxzzxxzzxzxxxzzzxzxzxzzxxxxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
