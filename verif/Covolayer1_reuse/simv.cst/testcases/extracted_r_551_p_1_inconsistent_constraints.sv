class c_551_1;
    integer i = -549;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_551_1;
    c_551_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x0zx1z0z00z0zxzzxzxxxz1xz0xxx1xxxzzxxxxzxxxxzxzxxzxzzzzzxxxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
