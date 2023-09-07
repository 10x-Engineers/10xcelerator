class c_109_1;
    integer i = 109;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_109_1;
    c_109_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz1xz0101z0zx00z1z1zxx0zx10xz001zxxzxxzzxxxxxxxzxxzzzzxxzxxxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
