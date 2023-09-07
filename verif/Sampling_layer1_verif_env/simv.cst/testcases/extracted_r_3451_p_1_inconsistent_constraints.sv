class c_3451_1;
    integer i = -574;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3451_1;
    c_3451_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1zxx1111x0zx10z00x011xzxzz00x01xzzxxxxxxzxzzxxzzzxxzxzxzzzxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
