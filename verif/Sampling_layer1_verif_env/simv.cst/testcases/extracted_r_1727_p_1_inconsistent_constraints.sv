class c_1727_1;
    integer i = -286;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1727_1;
    c_1727_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z10z1z1x0x1z001xxx0x111z110z1101zxzzxzzxzzzzzxzxzxxzzxxzxxxzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
