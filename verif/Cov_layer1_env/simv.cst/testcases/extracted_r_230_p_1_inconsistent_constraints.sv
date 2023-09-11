class c_230_1;
    integer i = -228;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_230_1;
    c_230_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11zz0xz0z0z01xx11xxz00x0001zxzz1xzzxxzzzzxzxxzxzzzzxzzzxxzxxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
