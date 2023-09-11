class c_1065_1;
    integer i = -176;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1065_1;
    c_1065_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z00z0zz00xzx011zx011zx1x101x0110zzzxzxxxzxzzxxxxxzxxzxxzxzxzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
