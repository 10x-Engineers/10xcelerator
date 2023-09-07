class c_1199_1;
    integer i = -198;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1199_1;
    c_1199_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z10z1xxxx00z00zxx1xzz011xzx10z1zxzxxzzxxzxxxxxxxzxzzzxxzzxxxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
