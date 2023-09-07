class c_2082_1;
    integer i = -345;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2082_1;
    c_2082_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "011xxzzz010z0xz11110z1x10xx1x0z0xxxzxzzxzxzxxxzxzxzzzzzzxzzxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
