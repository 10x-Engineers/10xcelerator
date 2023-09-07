class c_339_1;
    integer i = -55;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_339_1;
    c_339_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x011zz0z0zx1z1110xx011zxzx0x0001zzxzxzxxzzxxxzxzzxzxxzzzzxzxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
