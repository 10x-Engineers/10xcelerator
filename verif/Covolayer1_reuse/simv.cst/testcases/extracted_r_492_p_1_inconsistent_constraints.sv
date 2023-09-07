class c_492_1;
    integer i = -490;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_492_1;
    c_492_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz10zz0x10xz1xxxxxx1xxzxxz1xz100zxxxzxzzxxxxzzxzzxzzzxxxxzzzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
