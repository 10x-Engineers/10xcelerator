class c_3217_1;
    integer i = -535;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3217_1;
    c_3217_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx11z1x11z0z1z01x110x10xx1z1xx0zzzxzxxxxxzxxxzxzzxxzxxzzzzzzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
