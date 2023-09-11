class c_2595_1;
    integer i = -431;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2595_1;
    c_2595_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzx000x110011x1z011z00x00001xz01zxzzzxxxxxzxxzxxzxxxxzxxzzzzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
