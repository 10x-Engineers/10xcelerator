class c_2891_1;
    integer i = -480;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2891_1;
    c_2891_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z1xzz01xz010z1x0z00010xz11101z1zzzxzzzxxzxzzzzzzxxzxxzxzzxxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
