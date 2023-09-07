class c_424_1;
    integer i = 424;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_424_1;
    c_424_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11xxxz10z011x0x001001xz0x1x0001xzzxxxxzzzzzxzzzxzxxxxxxxxzxxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
