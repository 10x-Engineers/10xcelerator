class c_698_1;
    integer i = -115;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_698_1;
    c_698_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzxxzxz0zx0zx11zx1x0xz110zz0xz10zxxxzxxxzxxxzxxzxzzxzxzzzzxzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
