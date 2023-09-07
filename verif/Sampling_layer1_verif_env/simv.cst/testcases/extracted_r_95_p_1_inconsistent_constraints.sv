class c_95_1;
    integer i = -14;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_95_1;
    c_95_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzz11zxxz1zxz1z0zz011z00x1zxz01xzxxzxzzxzzxxxxxzxzxxxxxzzzzxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
