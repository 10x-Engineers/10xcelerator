class c_1087_1;
    integer i = -180;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1087_1;
    c_1087_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z1z0xz1zz10zx1000xzz0zxz0z010x1xzzxzxzxxzzzzzzzxxzzzxzzxxzxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
