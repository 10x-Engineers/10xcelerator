class c_3169_1;
    integer i = -527;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3169_1;
    c_3169_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x01zzz1x11z1x1x0zxzx0zzz1z0xx0z1xzxzzzzxzxxxxxzxxzxzzzzxzzzzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
