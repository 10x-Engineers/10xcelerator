class c_1146_1;
    integer i = -189;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1146_1;
    c_1146_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz100z0xzx1zzzzx0zx0xz0xz0zzz010xzzxxzzxxxxzxxxxzzzxzzzzxzxzzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
