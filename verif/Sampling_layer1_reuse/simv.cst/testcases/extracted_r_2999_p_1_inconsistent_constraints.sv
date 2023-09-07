class c_2999_1;
    integer i = -498;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2999_1;
    c_2999_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxxz10x0100zx0x0x01xx1100101zx00zxzxxzxzxzzzxzxzxzzxxxzzzxxzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
