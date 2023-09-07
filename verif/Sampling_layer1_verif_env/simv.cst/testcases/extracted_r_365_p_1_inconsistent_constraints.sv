class c_365_1;
    integer i = -59;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_365_1;
    c_365_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1xzz0xzx0xzx11xxz00xxxz0x0zz1xzzxxxzxxxzxxzxzzzzzxzzxzxzzxxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
