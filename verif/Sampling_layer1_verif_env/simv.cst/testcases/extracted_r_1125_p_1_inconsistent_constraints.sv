class c_1125_1;
    integer i = -186;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1125_1;
    c_1125_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxz0011x0xzxxz0x0x0010z1zz1x10xxzxzzzxxxxzzxxzzzzxzzxxzxxzzxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
