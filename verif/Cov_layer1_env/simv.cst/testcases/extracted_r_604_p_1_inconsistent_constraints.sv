class c_604_1;
    integer i = -602;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_604_1;
    c_604_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00xzzxxz1x0z1zx0z1z1x0z0xz1z0x10zzzxxxxxzxzxzxzxzzzzzxxzzzzxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
