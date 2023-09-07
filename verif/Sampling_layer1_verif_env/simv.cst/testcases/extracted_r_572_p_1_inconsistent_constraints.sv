class c_572_1;
    integer i = -94;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_572_1;
    c_572_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x001100z1z101xzx1xx0x0001x0zz0z1zxzxxxzzxzxzzzzzzxxzzxxxzzxxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
