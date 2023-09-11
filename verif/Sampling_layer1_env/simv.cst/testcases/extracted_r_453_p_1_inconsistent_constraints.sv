class c_453_1;
    integer i = -74;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_453_1;
    c_453_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z1000z1x0zxzxz011100zzzxz0xzz0zzzxzxzxxzzzzxxzzxxxxxxxzxxzxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
