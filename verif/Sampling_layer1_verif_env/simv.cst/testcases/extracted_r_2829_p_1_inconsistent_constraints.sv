class c_2829_1;
    integer i = -470;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2829_1;
    c_2829_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx1xxz00z0x1x0xzzz001100zxx0xz1zxzzzxxzxzzxzzzxxzxxxzzxzxxxzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
