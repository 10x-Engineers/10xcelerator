class c_2095_1;
    integer i = -348;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2095_1;
    c_2095_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzxxz01xzx11xzxz1z11z101x1zzz01xzxzxxzxxxxxxzzzxxzxzxzzxzxzxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
