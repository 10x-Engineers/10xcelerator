class c_1702_1;
    integer i = -282;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1702_1;
    c_1702_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz10xxz10z0zz0100xx0zzx0xz0xz000xxzxzxxxzxzzxzxxxxzxxxxxzxzzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
