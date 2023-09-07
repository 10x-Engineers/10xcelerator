class c_2557_1;
    integer i = -425;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2557_1;
    c_2557_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzxz0101xzz11z1100z1z0zz0xz10zz0xxzzxzzzxzzxxzzxzxzxzzxxxzzxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
