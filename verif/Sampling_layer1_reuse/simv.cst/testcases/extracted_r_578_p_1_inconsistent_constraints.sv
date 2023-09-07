class c_578_1;
    integer i = -95;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_578_1;
    c_578_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1x0zxz1z0xxxz010xzx1z1100z0zxx0zxzxzzxzzzzzxxzzzxxxzxxzzzzzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
