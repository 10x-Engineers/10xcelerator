class c_1184_1;
    integer i = -196;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1184_1;
    c_1184_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0z00zzzxx1xxzx1z1x00xzxx1xz110xxxxzxzxxzxzxzzzzxxxzxxxxxzxzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
