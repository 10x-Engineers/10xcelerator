class c_115_1;
    integer i = -113;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_115_1;
    c_115_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11zz00x00x001100x0zx101x1x0xzxx0zxxzxxxzxxxxzzxzzzzzxxxxxzxzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
