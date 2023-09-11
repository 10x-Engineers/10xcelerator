class c_1301_1;
    integer i = -215;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1301_1;
    c_1301_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11zxzx1z011z00010011100x00xx1z10xxxzzxzxxxxzxxxxxzxzzxxxxxzxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
