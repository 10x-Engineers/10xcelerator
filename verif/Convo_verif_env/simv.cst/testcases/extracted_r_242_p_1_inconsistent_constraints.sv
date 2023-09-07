class c_242_1;
    integer i = 242;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_242_1;
    c_242_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x01zx1x010100zz1zxzxxxx00z10xxxxxxzxxxxzzxxzxxzxxzxxzzxxxzxxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
