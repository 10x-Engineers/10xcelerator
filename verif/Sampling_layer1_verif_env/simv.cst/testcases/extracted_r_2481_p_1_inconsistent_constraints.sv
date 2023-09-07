class c_2481_1;
    integer i = -412;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2481_1;
    c_2481_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xxz1011xx11z01x11x01zz0z01010xxzxxxxzzxzzzzzxxzxxzzzxxzxxxxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
