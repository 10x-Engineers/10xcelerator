class c_593_1;
    integer i = -591;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_593_1;
    c_593_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1110zzxx111zz01x1z1xzzx010xz1z1xxzzzzzzxxzzxzzzxzzzzzxxxzxxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
