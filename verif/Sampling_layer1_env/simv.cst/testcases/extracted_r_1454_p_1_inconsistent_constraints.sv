class c_1454_1;
    integer i = -241;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1454_1;
    c_1454_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxxz0zx10z1z01x0z0zx1xxx1xx00zx0zzzxzzxzzzzxxzxxxxxzxzzzzxzzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
