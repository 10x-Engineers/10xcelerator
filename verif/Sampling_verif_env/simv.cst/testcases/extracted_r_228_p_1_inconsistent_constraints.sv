class c_228_1;
    integer i = 228;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_228_1;
    c_228_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01xz0xzzz01x10zx1zz0zxzz1011000zxzzzzxzxxzzzxzxxzzzxxxxxzzzzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
