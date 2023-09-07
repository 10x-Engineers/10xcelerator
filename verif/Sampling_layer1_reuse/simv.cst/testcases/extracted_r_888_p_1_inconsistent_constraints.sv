class c_888_1;
    integer i = -146;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_888_1;
    c_888_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z0xx011z01zx0x00xx1xz0zz10z1zzzzzzxzzxzxxzxxzxxxzxxxzxzxxzxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
