class c_3260_1;
    integer i = -542;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3260_1;
    c_3260_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxxxz1x01zxz1x1x10101zxzx10xz10xzzxzxxxxxzzzzxzxzzxxzzzzzzxzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram