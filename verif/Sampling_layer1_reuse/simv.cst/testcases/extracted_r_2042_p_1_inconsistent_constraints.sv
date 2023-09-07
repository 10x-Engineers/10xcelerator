class c_2042_1;
    integer i = -339;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2042_1;
    c_2042_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10xxzxz0z0zz111x11000xxx1xx1z1zxxxxxxxxxzzzxzzzzzxxzzzzzzxzxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
