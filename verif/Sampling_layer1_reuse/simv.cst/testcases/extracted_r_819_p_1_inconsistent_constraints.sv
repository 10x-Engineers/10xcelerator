class c_819_1;
    integer i = -135;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_819_1;
    c_819_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01zz0xzx1zz10x0z1xz110x1z0zxzxx0zzzxzxxxxxzxxzzzxxzxxzxxzxxxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
