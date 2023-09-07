class c_1363_1;
    integer i = -226;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1363_1;
    c_1363_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0100z010z10zxx0zx1xxxx1zxz110010zxxzzzzzzzzxzzzzzxzxzxxzxzxzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
