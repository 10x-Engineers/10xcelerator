class c_2185_1;
    integer i = -363;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2185_1;
    c_2185_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx1xz1xzxxzxzxx1x1x0z11z1010xz1zzzzxzzzzzzzxxxxxxxxxzxzzxzxxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
