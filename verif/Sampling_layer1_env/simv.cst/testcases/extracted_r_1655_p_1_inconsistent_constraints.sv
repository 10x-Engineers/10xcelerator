class c_1655_1;
    integer i = -274;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1655_1;
    c_1655_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z0xxzx0zx0z10z0z01zzxx0x1z1z011zzzzxxzxzxzxzzxzzxxzzzzzzzxzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
