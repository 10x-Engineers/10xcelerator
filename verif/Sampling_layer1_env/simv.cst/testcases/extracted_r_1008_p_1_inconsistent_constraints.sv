class c_1008_1;
    integer i = -166;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1008_1;
    c_1008_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz11xx1xz0z11z00xx0zz0zzzzzxz001zxxxxxxzzxxzzxxzzxxxxzxxxxzzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
