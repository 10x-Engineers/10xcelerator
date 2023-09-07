class c_294_1;
    integer i = -47;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_294_1;
    c_294_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxx11011xx1xx01zzxxz0zzx1xzxz10xxzxzxzxzxzxzzxxzxzzxxxxxzxxxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
