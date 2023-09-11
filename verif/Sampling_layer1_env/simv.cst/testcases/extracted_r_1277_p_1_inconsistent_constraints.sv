class c_1277_1;
    integer i = -211;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1277_1;
    c_1277_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx0xxzxzx00z0zxxx100z0zz10101zzzzxzxxxzzxxxzzzzxxxxxzzxzxzxxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
