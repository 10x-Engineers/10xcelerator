class c_631_1;
    integer i = -629;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_631_1;
    c_631_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "011xzz000x1xx1z0z0x011x1z1xz1z1zzxxxxzxxzxxzxxxzzzzxxxxzxzzzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
