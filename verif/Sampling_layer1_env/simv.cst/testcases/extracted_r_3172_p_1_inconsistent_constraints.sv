class c_3172_1;
    integer i = -527;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3172_1;
    c_3172_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x10111x1x0010z1x1xx0zx0x1z101z0zxxxzxzzzzxxzzzzxxzxxxzxzxxxzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
