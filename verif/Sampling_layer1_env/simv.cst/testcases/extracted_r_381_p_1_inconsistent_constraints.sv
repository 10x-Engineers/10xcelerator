class c_381_1;
    integer i = -62;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_381_1;
    c_381_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0z101zz11z1zzxzzx1zx0z01zzz000xxzxzzzzxxzxzxzzzzzxzxzzzzxxxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
