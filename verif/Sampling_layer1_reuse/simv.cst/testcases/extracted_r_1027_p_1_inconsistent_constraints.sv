class c_1027_1;
    integer i = -170;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1027_1;
    c_1027_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00101x0zz0xx0z1x0zx1z101xzxzzxxzzxzxzxzxzxxzxxzxxxxxzzzzzzzxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
