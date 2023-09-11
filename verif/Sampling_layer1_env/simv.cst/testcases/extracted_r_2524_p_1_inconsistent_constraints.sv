class c_2524_1;
    integer i = -419;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2524_1;
    c_2524_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1z10z1z1z1x01xz0z101011x01zz0zxzzxzzxxzzzxzzxzxzxxzzxzxzxzxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
