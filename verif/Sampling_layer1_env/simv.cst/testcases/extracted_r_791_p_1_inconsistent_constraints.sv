class c_791_1;
    integer i = -130;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_791_1;
    c_791_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1xzx0z110z1zzz0x1zz0101z1x10z00zxzzxzzzzzxzxzxxzzxxzxzxzxzxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
