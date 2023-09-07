class c_582_1;
    integer i = 582;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_582_1;
    c_582_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xxx100x0xxzx1xx0110xz1xz11xxz00zxzzxzzzxxzxxzxzxxzzzzxzzxzxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
