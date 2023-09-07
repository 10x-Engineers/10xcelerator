class c_502_1;
    integer i = -82;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_502_1;
    c_502_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1xxx11zxx011010z101xxx011z00x11xzzxzzxzzzxzxxzxxzxzzxzxzzzxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
