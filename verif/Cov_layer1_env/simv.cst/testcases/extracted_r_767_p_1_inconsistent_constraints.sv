class c_767_1;
    integer i = -765;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_767_1;
    c_767_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z1z0011z01x0x0x0x0z00110zx011x1xzzxxzxxzxzzzzzxzxxzzxxxxzzxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
