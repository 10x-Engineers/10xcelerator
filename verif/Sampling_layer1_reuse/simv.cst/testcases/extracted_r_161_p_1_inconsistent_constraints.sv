class c_161_1;
    integer i = -25;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_161_1;
    c_161_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x100x10z0z01xxzx100xxx1zx0x1xzxzzxzxzzzxzzzzzxxxxxxxzxxxzzxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
