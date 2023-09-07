class c_1568_1;
    integer i = -260;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1568_1;
    c_1568_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz1zx1xxzxz100z10z0100z011xx11z1zzxzxxxxxxzxzzzxzxzzxzxxxxxzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
