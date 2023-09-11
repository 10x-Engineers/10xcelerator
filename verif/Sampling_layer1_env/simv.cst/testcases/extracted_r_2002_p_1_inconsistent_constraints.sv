class c_2002_1;
    integer i = -332;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2002_1;
    c_2002_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zz11x0xzzz0zz0xx0x111xz000010zzxzxxxzxxxzzzzxxxzzzzxxzxxxxxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
