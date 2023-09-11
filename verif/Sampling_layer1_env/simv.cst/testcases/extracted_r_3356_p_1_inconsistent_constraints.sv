class c_3356_1;
    integer i = -558;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3356_1;
    c_3356_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z10z1110z1010x1x10z0xzx11x1z1001xzzxxzzzxxzxxxzzzzzzxzxzxzxzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
