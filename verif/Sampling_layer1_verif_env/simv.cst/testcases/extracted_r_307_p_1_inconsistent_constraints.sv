class c_307_1;
    integer i = -50;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_307_1;
    c_307_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxxz01z1xzx1z1xx011101z11010zz10xzzzzxxzzzzxzzxzzxzxzxxxzxzxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
