class c_725_1;
    integer i = -119;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_725_1;
    c_725_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z00x0x1xxx0xz01110zz11z110zx0011xzzzzzzxxzzzzxxxxxxxxxxzzxzzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
