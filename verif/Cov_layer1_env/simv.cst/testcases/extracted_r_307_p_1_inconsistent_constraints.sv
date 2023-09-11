class c_307_1;
    integer i = -305;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_307_1;
    c_307_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z010001111010xzxz00xz10xzxxzx1xxzxxxzxxzxzzxxxzxxxzxzxzxxxzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
