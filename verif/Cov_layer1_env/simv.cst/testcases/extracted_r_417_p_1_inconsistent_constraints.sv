class c_417_1;
    integer i = -415;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_417_1;
    c_417_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzzx0110001zx1x0z01zzzxz1x0x00xxxzzzzzzxxxzxzxxxxzxxxxzxzxxxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
