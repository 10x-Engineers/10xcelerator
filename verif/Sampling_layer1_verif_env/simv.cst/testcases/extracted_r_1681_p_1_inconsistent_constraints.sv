class c_1681_1;
    integer i = -279;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1681_1;
    c_1681_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx0zz0zxx10xz0z1xx01zx011zz1xx1xzzxxxzzxxxzzzzxxzzxzzxzxxzzzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
