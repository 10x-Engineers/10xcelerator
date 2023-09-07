class c_693_1;
    integer i = -691;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_693_1;
    c_693_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1zxzzzz1zzzz1x1zzz0zzxx110z010xxxzzxzxzxxxxzzxxzzxzxzzxxxxzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
