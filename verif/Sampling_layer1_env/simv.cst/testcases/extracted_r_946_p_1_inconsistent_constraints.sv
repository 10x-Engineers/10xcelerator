class c_946_1;
    integer i = -156;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_946_1;
    c_946_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0z0z10111zxzzx0zx00x01zxx11zxx0xxxzxzxzzxzxxzxzxxzzxzzzzxzzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
