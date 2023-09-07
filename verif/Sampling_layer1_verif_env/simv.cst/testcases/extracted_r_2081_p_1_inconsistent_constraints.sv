class c_2081_1;
    integer i = -345;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2081_1;
    c_2081_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "011z11z01xx101z1x11xz01x1zxz0z1zxxxxxzxxzxzxxxxxzxxzzxzzxzzzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
