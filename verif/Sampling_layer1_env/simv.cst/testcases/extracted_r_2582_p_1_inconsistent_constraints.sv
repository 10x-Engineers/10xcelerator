class c_2582_1;
    integer i = -429;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2582_1;
    c_2582_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx1zxx00z1z01zxz0z0z1z0z0z01zx0zxxxzxxzzxzzzzxzzzxxxxxxzxxzxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
