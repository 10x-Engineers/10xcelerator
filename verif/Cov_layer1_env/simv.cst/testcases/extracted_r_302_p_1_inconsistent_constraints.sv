class c_302_1;
    integer i = -300;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_302_1;
    c_302_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxx0zz0xz100x0z00101z1zzx1z1zx00zxzxxzzzzxxzxxzxzxzxzxxxzzzzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
