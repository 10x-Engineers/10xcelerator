class c_1279_1;
    integer i = -212;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1279_1;
    c_1279_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1z0z1xzzzzx0z00x0zz10x1zx001x01xxzzzxzzxxzxzzxzxzxzxxxxzzxxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
