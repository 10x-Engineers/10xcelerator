class c_3272_1;
    integer i = -544;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3272_1;
    c_3272_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zxz0z0z1z01xzx00zzxxzx1zz10z11zxzzxzxxxxzxxzzzxxzzxzzzzxzxxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
