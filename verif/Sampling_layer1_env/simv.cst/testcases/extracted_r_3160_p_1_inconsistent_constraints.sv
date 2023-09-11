class c_3160_1;
    integer i = -525;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3160_1;
    c_3160_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0xzx1010x00xz1000z1x0100z01zzz0zxzzxxzxzxzxxzxzzzxxxxxzzzzzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
