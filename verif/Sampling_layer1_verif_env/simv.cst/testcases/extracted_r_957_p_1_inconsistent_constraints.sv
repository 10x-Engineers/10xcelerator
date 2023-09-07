class c_957_1;
    integer i = -158;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_957_1;
    c_957_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10xxzz010xzz10zx11z1zzx1101x1x00xzzzzzzzzxzxzzzzxxxzxzzzzxzxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
