class c_3406_1;
    integer i = -566;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3406_1;
    c_3406_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1011x1x0111xxxx1x10xz0z000001010zxxzxzxxxxzzzxzxxxzzzzzzxzzzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
