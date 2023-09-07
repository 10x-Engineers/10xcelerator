class c_2775_1;
    integer i = -461;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2775_1;
    c_2775_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxz11z1zz1zzxx110zx0zxx10zx10zx1xzxxzxxxxzzxxxzzxzzzzxxxzzzzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram