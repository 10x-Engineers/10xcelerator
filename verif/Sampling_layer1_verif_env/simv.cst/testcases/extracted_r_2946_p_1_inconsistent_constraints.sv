class c_2946_1;
    integer i = -489;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2946_1;
    c_2946_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00111zzzx111x101x1000zx00zz10001xxzzxxzxxzzzxxzzzxxxxxzzxzzxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
