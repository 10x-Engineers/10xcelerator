class c_825_1;
    integer i = -136;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_825_1;
    c_825_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx010z0xx0z00z0z01x01101z001zx1xzzzzzxxxxxxzxxzxzzxzzxxxzzzxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
