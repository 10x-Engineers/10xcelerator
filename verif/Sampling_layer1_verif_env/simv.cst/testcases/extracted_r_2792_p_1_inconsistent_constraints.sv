class c_2792_1;
    integer i = -464;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2792_1;
    c_2792_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx100x0zx1000z0zx00z0z1x00z11xzxxxzzxxxzxxxzxzzxzzzxzxzzzzxxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
