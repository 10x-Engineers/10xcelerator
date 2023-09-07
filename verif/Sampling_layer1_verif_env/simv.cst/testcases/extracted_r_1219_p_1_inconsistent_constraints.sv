class c_1219_1;
    integer i = -202;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1219_1;
    c_1219_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0xxzz0zx0xxxzx10xx0011zz0xxz1zxxxzxxxzzxzxzxzzxzxzzxxxzxxzzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram