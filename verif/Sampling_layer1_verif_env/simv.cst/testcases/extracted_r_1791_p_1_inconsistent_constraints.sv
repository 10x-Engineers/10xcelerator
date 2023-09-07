class c_1791_1;
    integer i = -297;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1791_1;
    c_1791_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0zx1xzxxx1xx0x0xzxxx110x10xx0xzxxzzzzxxzxxxxzzzzxxzxxxzzxxxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
